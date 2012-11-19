#!/usr/bin/env roundup
#
# This file contains the test plan for the build command.
# Execute the plan by invoking: 
#    
#     rerun stubbs:test -m repo-rpm -p build
#

# Helpers
#
[[ -f ./functions.sh ]] && . ./functions.sh

# The Plan
# --------

describe "build"

it_runs_without_options() {
    rerun repo-rpm:build
    rerun repo-rpm:clean
}
