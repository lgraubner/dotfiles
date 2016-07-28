#!/usr/bin/env bash
#
# NPM
#
# Installs useful npm packages.

source $DOTFILES/scripts/utils.sh

SECTION="NPM"

# Check if NPM is installed
if [ $(which npm) ]; then
  e_update "npm" $SECTION
  exec_task "sudo npm install -g npm"
  e_success

  e_install "packages" $SECTION
  # update NPM
  exec_task "sudo npm install -g bower sitemap-generator-cli w3c-validator-cli gulp-cli"
  e_success
fi

unset $SECTION
exit 0
