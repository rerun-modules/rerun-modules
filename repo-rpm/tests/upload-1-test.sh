#!/usr/bin/env roundup
#
# This file contains the test plan for the upload command.
# Execute the plan by invoking: 
#    
#     rerun stubbs:test -m repo-rpm -p upload
#

# Helpers
#
[[ -f ./functions.sh ]] && . ./functions.sh

# The Plan
# --------

describe "upload"

it_works_without_options() {
    rerun github:delete-download --owner rerun-modules --repository rerun-modules --file rerun-modules-repo-1.0-1.noarch.rpm --force true

    rerun repo-rpm:clean
    rerun repo-rpm:build
    rerun repo-rpm:upload

    rerun repo-rpm:clean
    rerun github:delete-download --owner rerun-modules --repository rerun-modules --file rerun-modules-repo-1.0-1.noarch.rpm
}
