#!/usr/bin/env bash
#
# Atom
#
# Installs useful Atom packages.
#

source $DOTFILES/scripts/utils.sh

# Check if NPM is installed
if [ $(which apm) ]; then
  e_header "Installing atom packages"

  apm install color-picker docblockr emmet linter-eslint minimap react pigments autocomplete-php atom-ternjs

  e_success "Packages installed successfully"
fi

exit 0
