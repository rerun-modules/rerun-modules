#!/usr/bin/env roundup
#
# This file contains the test plan for the clean command.
# Execute the plan by invoking: 
#    
#     rerun stubbs:test -m repo-rpm -p clean
#

# Helpers
#
[[ -f ./functions.sh ]] && . ./functions.sh

# The Plan
# --------

describe "clean"

it_works_without_options() {
    rerun repo-rpm:clean
}
