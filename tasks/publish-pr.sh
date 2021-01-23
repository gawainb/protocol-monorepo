#!/bin/bash -e

# This publishes a "PR" version of our packages to Github.
# It is run when a new PR is made.
# https://github.com/lerna/lerna/tree/master/commands/publish#--canary

yarn lerna publish --canary --preid "PR${PR_NUMBER}.${SHORT_REV}" --dist-tag PR${PR_NUMBER} --registry "https://npm.pkg.github.com" --yes
