#!/bin/bash

# Clean the current list of tasks
task $(task ids) delete

# Counting how many tasks have been submitted
count=0
echo ${count}
########################################
# 0.1. General techniques
########################################

#1
task add project:'Techniques'.'Injection' Find protocols for injecting colonial ascidians +protocol
#2
task add project:'Techniques'.'Injection' List the required equipment depends:1
#3
task add project:'Techniques'.'Injection' List the required reagents depends:1
#4
task add project:'Techniques'.'Injection' Get the required equipment depends:2 +purchase
#5
task add project:'Techniques'.'Injection' Get the required reagents depends:3 +purchase
#6
task add project:'Techniques'.'Injection' Train using mock injections depends:4,5
#7
task add project:'Techniques'.'Injection' Master injections depends:6 +skill


#1
task add project:'Techniques'.'Soaking' Find protocols for soaking colonial ascidians +protocol
task add project:'Techniques'.'Soaking' List the required equipment depends:
task add project:'Techniques'.'Soaking' Design a flexible incubation chamber
task add project:'Techniques'.'Soaking' Build a prototype chamber
task add project:'Techniques'.'Soaking' Test the prototype chamber
task add project:'Techniques'.'Soaking' Get several incubation chambers

task add project:'Techniques'.'Anesthesia'
task add project:'Techniques'.'Fixing colonies'
task add project:'Techniques'.'Live whole-tissue labeling'
task add project:'Techniques'.'Inducing WBR'
task add project:'Techniques'.'RNA interference'

########################################
# 1.1. Cellular origins of WBR
########################################

#1
task add project:'Cellular origins of WBR'.'Label the entire tissue'.'Find a suitable dye' List the available fluorescent dyes +protocol
#2
task add project:'Cellular origins of WBR'.'Label the entire tissue'.'Find a suitable dye' Verify the affinity of the identified dyes depends:
#3
task add project:'Cellular origins of WBR'.'Label the entire tissue'.'Find a suitable dye' Verify the recordable span of the identified dyes

#1
task add project:'Cellular origins of WBR'.'Label the entire tissue' Administer the selected dye +technique
#1
task add project:'Cellular origins of WBR'.'Label the entire tissue' Assess the fluorescence of the dye in the colony +imaging
#1
task add project:'Cellular origins of WBR'.'Label the entire tissue' Assess the autofluorescence of the tissue +imaging

#1
task add project:'Cellular origins of WBR'.'Image the whole migration' Determine the temporal span of niche establishment

#1
task add project:'Cellular origins of WBR'.'Track all cells' Determine the existing software for manual tracking

########################################
# 2. Lluis PhD thesis
########################################

task add project:PhD.thesis Find a suitable topic
task add project:PhD.thesis Get enough credits
