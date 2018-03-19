#!/bin/bash

# Script for setting up the various tasks
# for setting up the Blanchoud lab

# Clean the current list of tasks
rm -rf ~/.task

# For counting how many tasks have been submitted
COUNTER=0

#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# Labels used in the tasks:
#  +code
#  +create
#  +equipment
#  +imaging
#  +inventory
#  +molecular
#  +protocol
#  +purchase
#  +skill
#  +technique
#  +training
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

########################################
# 0. General techniques
########################################

#========================================
#= 0.1 Handling techniques
#========================================

#----------------------------------------
#- 0.1.1 Injections in B. leachii
#----------------------------------------
INJ=$COUNTER
#1
task add project:'Techniques'.'Handling'.'Injection' Find protocols for injecting colonial ascidians +protocol
#2
task add project:'Techniques'.'Handling'.'Injection' List the required equipment depends:$((INJ+1)) +inventory
#3
task add project:'Techniques'.'Handling'.'Injection' List the required reagents, including a marker for mock injections depends:$((INJ+1)) +inventory
#4
task add project:'Techniques'.'Handling'.'Injection' Get the required equipment depends:$((INJ+2)) +purchase
#5
task add project:'Techniques'.'Handling'.'Injection' Get the required reagents depends:$((INJ+3)) +purchase
#6
task add project:'Techniques'.'Handling'.'Injection' Train using mock injections depends:$((INJ+4)),$((INJ+5)) +training
#7
task add project:'Techniques'.'Handling'.'Injection' Master injections depends:$((INJ+6)) +skill
#8
task add project:'Techniques'.'Handling'.'Injection' Write our own optimized protocol depends:$((INJ+7)) +create +protocol
COUNTER=$((COUNTER+8))

#----------------------------------------
#- 0.1.2 Soaking B. leachii colonies
#----------------------------------------
SOK=$COUNTER
#1
task add project:'Techniques'.'Handling'.'Soaking' Find protocols for soaking colonial ascidians +protocol
#2
task add project:'Techniques'.'Handling'.'Soaking' List the required equipment depends:$((SOK+1)) +inventory
#3
task add project:'Techniques'.'Handling'.'Soaking' Design a flexible incubation chamber depends:$((SOK+2)) +create
#4
task add project:'Techniques'.'Handling'.'Soaking' Build a prototype chamber depends:$((SOK+3)) +purchase
#5
task add project:'Techniques'.'Handling'.'Soaking' Test the prototype chamber depends:$((SOK+4)) +training
#6
task add project:'Techniques'.'Handling'.'Soaking' Get several incubation chambers depends:$((SOK+4)),$((SOK+5)) +equipment
#7
task add project:'Techniques'.'Handling'.'Soaking' Write our own optimized protocol depends:$((SOK+6)) +create +protocol
COUNTER=$((COUNTER+7))

#----------------------------------------
#- 0.1.3 Anesthesia of B. leachii colonies
#----------------------------------------
ANH=$COUNTER
#1
task add project:'Techniques'.'Handling'.'Anesthesia' Find protocols for anesthesizing colonial ascidians +protocol
#2
task add project:'Techniques'.'Handling'.'Anesthesia' List the required reagents depends:$((ANH+1)) +inventory
#3
task add project:'Techniques'.'Handling'.'Anesthesia' Get the required reagents depends:$((ANH+2)) +purchase
#4
task add project:'Techniques'.'Handling'.'Anesthesia' Test anesthesia concentrations and incubation times in a chamber depends:$((ANH+3)),$((SOK+6)) +training
#5
task add project:'Techniques'.'Handling'.'Anesthesia' Master anesthesia depends:$((ANH+4)) +skill
#6
task add project:'Techniques'.'Handling'.'Anesthesia' Write our own optimized protocol depends:$((ANH+5)) +create +protocol
COUNTER=$((COUNTER+6))

#----------------------------------------
#- 0.1.4 Inducing WBR in B. leachii
#----------------------------------------
IND=$COUNTER
#1
task add project:'Techniques'.'Handling'.'Inducing WBR' Find protocols for inducing WBR in colonial ascidians +protocol
#2
task add project:'Techniques'.'Handling'.'Inducing WBR' List the required equipment depends:$((IND+1)) +inventory
#3
task add project:'Techniques'.'Handling'.'Inducing WBR' Get the required equipment depends:$((IND+2)) +purchase
#4
task add project:'Techniques'.'Handling'.'Inducing WBR' Test induction of WBR in colonial ascidians depends:$((IND+3)) +training
#5
task add project:'Techniques'.'Handling'.'Inducing WBR' Master induction depends:$((IND+4)) +skill
#6
task add project:'Techniques'.'Handling'.'Inducing WBR' Write our own optimized protocol depends:$((IND+5)) +create +protocol
COUNTER=$((COUNTER+6))


#========================================
#= 0.2 Histology techniques
#========================================

#----------------------------------------
#- 0.2.1 Fixation of B. leachii colonies
#----------------------------------------
FIX=$COUNTER
#1
task add project:'Techniques'.'Histology'.'Fixing colonies' Find protocols for fixing colonial ascidians +protocol
#2
task add project:'Techniques'.'Histology'.'Fixing colonies' List the required reagents depends:$((FIX+1)) +inventory
#3
task add project:'Techniques'.'Histology'.'Fixing colonies' Get the required reagents depends:$((FIX+2)) +purchase
#4
task add project:'Techniques'.'Histology'.'Fixing colonies' Test fixation anesthesia, duration, reagents:$((FIX+3)),$((ANH+5)) +training
#5
task add project:'Techniques'.'Histology'.'Fixing colonies' Master fixation depends:$((FIX+4)) +skill
#6
task add project:'Techniques'.'Histology'.'Fixing colonies' Write our own optimized protocol depends:$((FIX+5)) +create +protocol
COUNTER=$((COUNTER+6))

#----------------------------------------
#- 0.2.2 Cryosection fixed colonies
#----------------------------------------
SEC=$COUNTER
#1
task add project:'Techniques'.'Histology'.'Sectioning' Find protocols for embedding and cryosectioning tunicates, including alternatives to OCT +protocol
#2
task add project:'Techniques'.'Histology'.'Sectioning' List the required reagents depends:$((SEC+1)) +inventory
#3
task add project:'Techniques'.'Histology'.'Sectioning' Get the required reagents depends:$((SEC+2)) +purchase
#4
task add project:'Techniques'.'Histology'.'Sectioning' Test sectioning mounting, thickness, treatments depends:$((SEC+3)),$((FIX+5)) +training
#5
task add project:'Techniques'.'Histology'.'Sectioning' Master sectioning depends:$((SEC+4)) +skill
#6
task add project:'Techniques'.'Histology'.'Sectioning' Write our own optimized protocol depends:$((SEC+5)) +create +protocol
COUNTER=$((COUNTER+6))

#----------------------------------------
#- 0.2.3 Labeling sections of B. leachii
#----------------------------------------
LBL=$COUNTER
#1
task add project:'Techniques'.'Histology'.'Labeling sections' Find protocols for histological staining of colonial ascidians +protocol
#2
task add project:'Techniques'.'Histology'.'Labeling sections' Find protocols for immmunohistochemistry in colonial ascidians +protocol
#3
task add project:'Techniques'.'Histology'.'Labeling sections' Find protocols for in situ hybridization of colonial ascidians +protocol
#4
task add project:'Techniques'.'Histology'.'Labeling sections' List the required reagents depends:$((LBL+1)),$((LBL+2)),$((LBL+3)) +inventory
#5
task add project:'Techniques'.'Histology'.'Labeling sections' Get the required reagents depends:$((LBL+4)) +purchase
#6
task add project:'Techniques'.'Histology'.'Labeling sections' Test labelling of cryosections depends:$((LBL+5)),$((SEC+5)) +training
#7
task add project:'Techniques'.'Histology'.'Labeling sections' Master labelling depends:$((LBL+6)) +skill
#8
task add project:'Techniques'.'Histology'.'Labeling sections' Write our own optimized protocols depends:$((LBL+7)) +create +protocol
COUNTER=$((COUNTER+8))

#========================================
#= 0.3 Imaging
#========================================

#----------------------------------------
#- 0.3.1 Selecting the proper equipment
#----------------------------------------
MCR=$COUNTER
#1
task add project:'Techniques'.'Imaging'.'Equipment' Identify the microscope most suitable for whole-colony imaging +inventory
#2
task add project:'Techniques'.'Imaging'.'Equipment' Identify the microscope most suitable for flow imaging +inventory
#3
task add project:'Techniques'.'Imaging'.'Equipment' Identify the microscope most suitable for wide field imaging +inventory
#4
task add project:'Techniques'.'Imaging'.'Equipment' Identify the microscope most suitable for epifluorescence imaging +inventory
#5
task add project:'Techniques'.'Imaging'.'Equipment' Identify the microscope most suitable for confocal imaging +inventory
#6
task add project:'Techniques'.'Imaging'.'Equipment' Identify the microscope most suitable for live 4D imaging +inventory
#7
task add project:'Techniques'.'Imaging'.'Equipment' 'Get a transgenic line of zebrafish for testing imaging (circulating cells)' +inventory
#8
task add project:'Techniques'.'Imaging'.'Equipment' Test imaging of whole-colonies depends:$((MCR+1)) +imaging +training
#9
task add project:'Techniques'.'Imaging'.'Equipment' Test imaging of haemolymph flow depends:$((MCR+2)) +imaging +training
#10
task add project:'Techniques'.'Imaging'.'Equipment' Test imaging of stained sections using wide field depends:$((MCR+3)),$((LBL+7)) +imaging +training
#11
task add project:'Techniques'.'Imaging'.'Equipment' Test imaging of transgenic zebrafish tissue using epifluorescence depends:$((MCR+4)),$((MCR+7)) +imaging +training
#12
task add project:'Techniques'.'Imaging'.'Equipment' Test imaging of fluorescently labeled sections using confocal depends:$((MCR+5)),$((LBL+7)) +imaging +training
#13
task add project:'Techniques'.'Imaging'.'Equipment' Test imaging of transgenic zebrafish tissue using live 4D imaging depends:$((MCR+6)),$((MCR+7)) +imaging +training
COUNTER=$((COUNTER+13))

#----------------------------------------
#- 0.3.2 Monitoring growth in B. leachii
#----------------------------------------
GRW=$COUNTER
#1
task add project:'Techniques'.'Imaging'.'Monitoring growth' Find protocols for monitoring growth in colonial ascidians +protocol
#2
task add project:'Techniques'.'Imaging'.'Monitoring growth' List the required equipment depends:$((GRW+1)) +inventory
#3
task add project:'Techniques'.'Imaging'.'Monitoring growth' Get the required equipment depends:$((GRW+2)) +purchase
#4
task add project:'Techniques'.'Imaging'.'Monitoring growth' Test monitoring on various imaging conditions depends:$((GRW+3)) +training
#5
task add project:'Techniques'.'Imaging'.'Monitoring growth' Adapt the counting software to the acquired images depends:$((GRW+4)) +code
#6
task add project:'Techniques'.'Imaging'.'Monitoring growth' Master monitoring depends:$((GRW+5)) +skill
#7
task add project:'Techniques'.'Imaging'.'Monitoring growth' Write our own optimized protocol depends:$((GRW+6)) +create +protocol
COUNTER=$((COUNTER+7))

#----------------------------------------
#- 0.3.3 Monitoring haemolymph flow
#----------------------------------------
FLW=$COUNTER
#1
task add project:'Techniques'.'Imaging'.'Monitoring flow' Find protocols for monitoring haemolymph flow in colonial ascidians +protocol
#2
task add project:'Techniques'.'Imaging'.'Monitoring flow' List the required equipment depends:$((FLW+1)) +inventory
#3
task add project:'Techniques'.'Imaging'.'Monitoring flow' Get the required equipment depends:$((FLW+2)) +purchase
#4
task add project:'Techniques'.'Imaging'.'Monitoring flow' Test monitoring on various microscopes depends:$((FLW+3)) +training
#5
task add project:'Techniques'.'Imaging'.'Monitoring flow' Adapt the flow software to the acquired images depends:$((FLW+4)) +code
#6
task add project:'Techniques'.'Imaging'.'Monitoring flow' Master monitoring flow depends:$((FLW+5)) +skill
#7
task add project:'Techniques'.'Imaging'.'Monitoring flow' Write our own optimized protocol depends:$((FLW+6)) +create +protocol
COUNTER=$((COUNTER+7))

#----------------------------------------
#- 0.3.4 Culture chamber for live imaging
#----------------------------------------
LVI=$COUNTER
#1
task add project:'Techniques'.'Imaging'.'Culture chamber' Find protocols for live imaging in colonial ascidians +protocol
#2
task add project:'Techniques'.'Imaging'.'Culture chamber' List the required reagents depends:$((LVI+1)) +inventory
#3
task add project:'Techniques'.'Imaging'.'Culture chamber' List the required equipment depends:$((LVI+1)) +inventory
#4
task add project:'Techniques'.'Imaging'.'Culture chamber' Design a flexible culture chamber depends:$((LVI+3)) +create
#5
task add project:'Techniques'.'Imaging'.'Culture chamber' Get the required reagents depends:$((LVI+2)) +purchase
#6
task add project:'Techniques'.'Imaging'.'Culture chamber' Get the required equipment depends:$((LVI+3)),$((LVI+4)) +purchase
#7
task add project:'Techniques'.'Imaging'.'Culture chamber' Test the chamber on the microscopes depends:$((LVI+5)),$((LVI+6)),$((MCR+9)),$((MCR+11)),$((MCR+13)) +training
#8
task add project:'Techniques'.'Imaging'.'Culture chamber' Compare the growth and flow rates with those in the aquarium depends:$((LVI+7)),$((GRW+6)),$((FLW+6)) +imaging
#9
task add project:'Techniques'.'Imaging'.'Culture chamber' Master culture chambers depends:$((LVI+8)) +skill
#10
task add project:'Techniques'.'Imaging'.'Culture chamber' Write our own optimized protocol depends:$((LVI+9)) +create +protocol
COUNTER=$((COUNTER+10))

#========================================
#= 0.4 Molecular biology
#========================================

#----------------------------------------
#- 0.4. RNA interference in B. leachii
#----------------------------------------
RNA=$COUNTER
#1
task add project:'Techniques'.'RNA interference' Find protocols for RNAi in colonial ascidians +protocol
#2
task add project:'Techniques'.'RNA interference' List the required reagents depends:$((RNA+1)) +inventory
#3
task add project:'Techniques'.'RNA interference' List the required equipment depends:$((RNA+1)) +inventory
#4
task add project:'Techniques'.'RNA interference' Design a probe for positive control tests depends:$((RNA+1)) +inventory +molecular
#5
task add project:'Techniques'.'RNA interference' Get the required reagents depends:$((RNA+2)),$((RNA+4)) +purchase
#6
task add project:'Techniques'.'RNA interference' Get the required equipment depends:$((RNA+3)) +purchase
#7
task add project:'Techniques'.'RNA interference' Test RNAi in colonial ascidians depends:$((RNA+5)),$((RNA+6)) +training
#8
task add project:'Techniques'.'RNA interference' Master RNAi depends:$((RNA+7)) +skill
#9
task add project:'Techniques'.'RNA interference' Write our own optimized protocol depends:$((RNA+8)) +create +protocol
COUNTER=$((COUNTER+9))



########################################
# 1. Characterizing WBR in B. leachii
########################################

#========================================
#= 1.1 Cellular origins of WBR
#========================================

#----------------------------------------
#- 1.1.1 Label the entire tissue
#----------------------------------------
CLO=$COUNTER
#1
task add project:'Cellular origins of WBR'.'Label the entire tissue' List the available fluorescent dyes for live labeling +protocol
#2
task add project:'Cellular origins of WBR'.'Label the entire tissue' Assess the autofluorescence of the tissue depends:$((LVI+9)) +imaging
#3
task add project:'Cellular origins of WBR'.'Label the entire tissue' Get the best candidate dyes depends:$((CLO+1)),$((CLO+2)) +purchase
#4
task add project:'Cellular origins of WBR'.'Label the entire tissue' Test dye delivery conditions depends:$((ANH+5)),$((INJ+7)),$((SOK+6)),$((CLO+3)),$((LVI+9)) +training
#5
task add project:'Cellular origins of WBR'.'Label the entire tissue' Asses the tissue affinity and fluorescence of the selected dyes depends:$((CLO+4)),$((LVI+9)) +imaging
#6
task add project:'Cellular origins of WBR'.'Label the entire tissue' Compare the groth and flow rates with unstained colonies depends:$((CLO+5)),$((GRW+6)),$((FLW+6)) +imaging
#7
task add project:'Cellular origins of WBR'.'Label the entire tissue' Master whole-tissue labeling depends:$((CLO+6)) +skill
#8
task add project:'Cellular origins of WBR'.'Label the entire tissue' Write our own optimized protocol depends:$((CLO+7)) +create +protocol
COUNTER=$((COUNTER+8))

#----------------------------------------
#- 1.1.2 Live imaging for WBR
#----------------------------------------
CLO=$COUNTER
#6
task add project:'Cellular origins of WBR'.'Label the entire tissue' Verify the recordable span of the selected dyes depends:$((CLO+4)),$((LVI+9)) +imaging

#----------------------------------------
#- 1.1.3 Temporal span of WBR initiation
#----------------------------------------
CLO=$COUNTER
#4
task add project:'Cellular origins of WBR'.'Image the whole migration' Determine the temporal span of niche establishment

#----------------------------------------
#- 1.1.4 Finding the origins of WBR
#----------------------------------------
#5
task add project:'Cellular origins of WBR'.'Track all cells' Determine the existing software for manual tracking
COUNTER=$((COUNTER+5))

########################################
# 2. Lluis PhD thesis
########################################

#----------------------------------------
#- 2.1 Administrative part
#----------------------------------------
THS=$COUNTER
#1
task add project:'PhD'.'Thesis' Define more precisely a suitable topic
#2
task add project:'PhD'.'Thesis' Assemble a thesis committee
#3
task add project:'PhD'.'Thesis' 'Get enough credits (at least 2 per year)'
#4
task add project:'PhD'.'Thesis' 'Get 2 credits for soft skills (throught the PhD)'
#5
task add project:'PhD'.'Thesis' 'Attend at least 3 workshops or conferences (throught the PhD)'
#6
task add project:'PhD'.'Thesis' Talk to Laurent Falquet about StarOmics for insights in the program
COUNTER=$((COUNTER+6))

#----------------------------------------
#- 2.2 Courses to attend
#----------------------------------------
CRS=$COUNTER
#1
task add project:'PhD'.'Courses' Attend Data Management Planing by the SIB, Lausanne start:2018-03-15 end:2018-03-15
#2
task add project:'PhD'.'Courses' Attend Development of Marine Organisms by the CNRS, Villefranche start:2018-03-20 end:2018-03-31
COUNTER=$((COUNTER+2))

#----------------------------------------
#- 2.3 Techniques to learn
#----------------------------------------
TCH=$COUNTER
#1
task add project:'PhD'.'Techniques' Learn cryoinjury using Zebrafish +training
#2
task add project:'PhD'.'Techniques' Learn tissue fixation using Zebrafish +training
#3
task add project:'PhD'.'Techniques' Learn tissue mounting using Zebrafish +training
#4
task add project:'PhD'.'Techniques' Learn tissue sectioning on the cryotome with Verena using Zebrafish +training
#5
task add project:'PhD'.'Techniques' Learn vascular tissue ablation using Botryllus schlosseri +training
#6
task add project:'PhD'.'Techniques' Get trained for spinning disk microscopy +training +imaging 
#7
task add project:'PhD'.'Techniques' Get trained for confocal microscopy +training +imaging 
#8
task add project:'PhD'.'Techniques' Get trained for epifluorescence microscopy +training +imaging 
#9
task add project:'PhD'.'Techniques' Get trained on marine organisms during the DOMO course depends:$((CRS+2)) +training
COUNTER=$((COUNTER+9))

#----------------------------------------
#- 2.4 Science part
#----------------------------------------
#task add project:'PhD'.'Science' Share all of our scientifc papers depends:$((SRV+1)) +software
#1
task add project:'PhD'.'Science' Environmental conditions for our animals
#2
task add project:'PhD'.'Science' Cell origin
#3
task add project:'PhD'.'Science' Atlas
#4
task add project:'PhD'.'Goals' intermediate goals to be described here in due course
COUNTER=$((COUNTER+4))
