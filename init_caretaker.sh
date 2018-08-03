#!/bin/bash

# Script for setting up the environment of Taskwarrior
# to allow task sharing among the users of the Blanchoud lab.
#
# Simon Bc.locationanchoud, 2018

# Setting up the new User UDA
task config uda.caretaker.type string
task config uda.caretaker.label Caretaker
task config uda.caretaker.default $USER
task config report.next.columns id,start.age,entry.age,depends,priority,project,caretaker,tags,recur,scheduled.countdown,due.relative,until.remaining,description,urgency
task config report.next.labels ID,Active,Age,Deps,P,Project,Caretaker,Tag,Recur,S,Due,Until,Description,Urg

hdir=`task diagnostics | grep Location | awk '{ print $2 }'`
# Setting up the hook folder
if [[ ! -d $hdir ]]; then
	mkdir -p $hdir
fi

# Copying our custom on-modify hook script
cp on-modify.update_caretaker.py ~/.task/hooks/
