#!/bin/bash

# Clean the current list of tasks
echo 'all' > task $(task ids) delete

# For counting how many tasks have been submitted
COUNTER=0

########################################
# 0. General techniques
########################################

#----------------------------------------
#- 0.1 Injections in B. leachii
#----------------------------------------
INJ=$COUNTER
#1
task add project:'Techniques'.'Injection' Find protocols for injecting colonial ascidians +protocol
#2
task add project:'Techniques'.'Injection' List the required equipment depends:$((INJ+1))
#3
task add project:'Techniques'.'Injection' List the required reagents depends:$((INJ+1))
#4
task add project:'Techniques'.'Injection' Get the required equipment depends:$((INJ+2)) +purchase
#5
task add project:'Techniques'.'Injection' Get the required reagents depends:$((INJ+3)) +purchase
#6
task add project:'Techniques'.'Injection' Train using mock injections depends:$((INJ+4)),$((INJ+5))
#7
task add project:'Techniques'.'Injection' Master injections depends:$((INJ+6)) +skill
COUNTER=$((COUNTER+7))

#----------------------------------------
#- 0.2 Soaking B. leachii colonies
#----------------------------------------
SOK=$COUNTER
#1
task add project:'Techniques'.'Soaking' Find protocols for soaking colonial ascidians +protocol
#2
task add project:'Techniques'.'Soaking' List the required equipment depends:$((SOK+1))
#3
task add project:'Techniques'.'Soaking' Design a flexible incubation chamber depends:$((SOK+2))
#4
task add project:'Techniques'.'Soaking' Build a prototype chamber depends:$((SOK+3)) +purchase
#5
task add project:'Techniques'.'Soaking' Test the prototype chamber depends:$((SOK+4))
#6
task add project:'Techniques'.'Soaking' Get several incubation chambers depends:$((SOK+4)),$((SOK+5)) +technique
COUNTER=$((COUNTER+6))

#----------------------------------------
#- 0.3 Anesthesia of B. leachii colonies
#----------------------------------------
ANH=$COUNTER
task add project:'Techniques'.'Anesthesia' Find protocols for anesthesizing colonial ascidians +protocols
COUNTER=$((COUNTER+6))

#task add project:'Techniques'.'Fixing colonies' Find protocols for fixing colonial ascidians +protocols
#task add project:'Techniques'.'Live whole-tissue labeling' Find protocols for labeling colonial ascidians +protocols
#task add project:'Techniques'.'Inducing WBR' Find protocols for inducing WBR in colonial ascidians +protocols
#task add project:'Techniques'.'RNA interference' Find protocols for using RNAi in colonial ascidians +protocols

########################################
# 1. Characterizing WBR in B. leachii
########################################

#----------------------------------------
#- 1.1 Cellular origins
#----------------------------------------
CLO=$COUNTER
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

task add project:'PhD'.'Thesis' Find a suitable topic
task add project:'PhD'.'Credits' 'Get enough credits (at least 2 per year)'
#task add project:'PhD'.'Science' Share all of our scientifc papers depends:$((SRV+1)) +software
task add project: 'PhD'.'Science' 'Techniques'.'Zebrafish' cryoinjury
task add project: 'PhD'.'Sicence' 'Techniques'.'Zebrafish' tissue fixation and slicing +imaging +technique
task add project: 'PhD'.'Science' 'Techniques'.'Botrylloides Schlosseri' ablation +technique
task add project: 'PhD'.'Science' 'Techniques'.'DOMO course' learn more techniques-list here once learnt
task add project: 'PhD'.'Equipment' 'Training'.'Confocal' 
task add project: 'PhD'.'Equipment' 'Training'.'Epifluorescence' in living colonies
task add project: 'PhD'.'Topic' Environmental Cell origin Atlas

