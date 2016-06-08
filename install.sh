#!/bin/bash
#
# Author: Edwin Hoksberg <edwin@edwinhoksberg.nl>
# Date:   2016-06-08
#
# Maps configuration files to their appropiate location, as defined in the mappings.txt file.
# Useful for setting up a new user environment.

set -e -o nounset

readonly DOTFILES=$(pwd);
readonly MAPPING="${DOTFILES}/mapping.txt";

if [[ ! -f $MAPPING ]]; then
  echo "Please create from:to mapping in ${MAPPING}" >&2;
  exit 1;
fi

for LINK in $(cat $MAPPING); do
  FROM=$DOTFILES/$(echo $LINK | cut -d':' -f 1);
  TO=$HOME/$(echo $LINK | cut -d':' -f 2);

  if [[ -e $TO ]]; then
    echo "Target '${TO}' already exists, skipping..." >&2;
  else
    ln --verbose --symbolic $FROM $TO;
  fi
done

echo "All done!";

