#!/usr/bin/env python
#
# Adds the ability to virtually share tasks between users by assigning their username
# to a new "caretaker" UDA. 
#
# Simon Blanchoud, 2018

import json
import os
import sys

# Read both inputs
old = json.loads(sys.stdin.readline())
new = json.loads(sys.stdin.readline())

# Make sure we can use the caretaker UDA
if 'caretaker' not in old:
    print('ERROR: Taskwarrior was not initialized properly with the "caretaker" UDA. Please run the "init_caretaker.sh" script.')
    sys.exit(1)

# There are only two possibilites here:
#  - either the user is assigning the task to someone else and thus the change is already valid
#  - or the user is modifying the task and he thus becomes the default caretaker
#
# We could also start checking for ownership to prevent takeovers but that does not seem necessary yet.
#
# So,if the caretaker is not modified, the current user becomes the caretaker; if it is modified,
# the new value is kept as such.
if (old['caretaker'] == new['caretaker']):
    new['caretaker'] = os.environ['USER']

# Return the updated task
print(json.dumps(new))
sys.exit(0)
