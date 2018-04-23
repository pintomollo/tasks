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
#  +contact
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

#----------------------------------------
#- 0.1.5 Laser ablation in B. leachii
#----------------------------------------
ABL=$COUNTER
#1
task add project:'Techniques'.'Handling'.'Laser ablation' Find protocols for laser ablation colonial ascidians +protocol
#2
task add project:'Techniques'.'Handling'.'Laser ablation' List the required equipment depends:$((ABL+1)) +inventory
#3
task add project:'Techniques'.'Handling'.'Laser ablation' Get the required equipment depends:$((ABL+2)) +purchase
#4
task add project:'Techniques'.'Handling'.'Laser ablation' Test laser ablation in colonial ascidians depends:$((ABL+3)) +training
#5
task add project:'Techniques'.'Handling'.'Laser ablation' Master laser ablation depends:$((ABL+4)) +skill
#6
task add project:'Techniques'.'Handling'.'Laser ablation' Write our own optimized protocol depends:$((ABL+5)) +create +protocol
COUNTER=$((COUNTER+6))

#----------------------------------------
#- 0.1.6 Removing pigments in B. leachii
#----------------------------------------
PIG=$COUNTER
#1
task add project:'Techniques'.'Handling'.'Remove pigments' Identify the chemical origin of the pigments in colonial ascidians +inventory
#2
task add project:'Techniques'.'Handling'.'Remove pigments' Find protocols for blocking the synthesis of pigments depends:$((PIG+1)) +protocol
#3
task add project:'Techniques'.'Handling'.'Remove pigments' List the required reagents depends:$((PIG+2)) +inventory
#4
task add project:'Techniques'.'Handling'.'Remove pigments' Get the required reagents depends:$((PIG+3)) +purchase
#5
task add project:'Techniques'.'Handling'.'Remove pigments' Test pigment removal in colonial ascidians depends:$((PIG+4)) +training
#6
task add project:'Techniques'.'Handling'.'Remove pigments' Master pigment removal depends:$((PIG+5)) +skill
#7
task add project:'Techniques'.'Handling'.'Remove pigments' Write our own optimized protocol depends:$((PIG+6)) +create +protocol
COUNTER=$((COUNTER+7))


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
task add project:'Techniques'.'Histology'.'Fixing colonies' Test fixation anesthesia, duration, reagents depends:$((FIX+3)),$((ANH+5)) +training
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

#----------------------------------------
#- 0.2.4 Determine cell types
#----------------------------------------
DCT=$COUNTER
#1
task add project:'Techniques'.'Histology'.'Determine cell types' Find protocols for determining cells types in colonial ascidians
#2
task add project:'Techniques'.'Histology'.'Determine cell types' Find protocols describing organogenesis in colonial ascidians
#3
task add project:'Techniques'.'Histology'.'Determine cell types' Select the most informative stainings for WBR
#4
task add project:'Techniques'.'Histology'.'Determine cell types' Stain histological sections of uninjured colonies
#5
task add project:'Techniques'.'Histology'.'Determine cell types' Use machine learning to discriminate between cell types
#6
task add project:'Techniques'.'Histology'.'Determine cell types' Master cell type identification
#7
task add project:'Techniques'.'Histology'.'Determine cell types' Write our own optimized protocols depends:$((LBL+7)) +create +protocol
COUNTER=$((COUNTER+7))


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
#4 in addition depends:CSZ+6
task add project:'Techniques'.'Imaging'.'Monitoring growth' Test monitoring on various imaging conditions depends:$((GRW+3)) +training
#5
task add project:'Techniques'.'Imaging'.'Monitoring growth' Master monitoring depends:$((GRW+4)) +skill
#6
task add project:'Techniques'.'Imaging'.'Monitoring growth' Write our own optimized protocol depends:$((GRW+5)) +create +protocol
COUNTER=$((COUNTER+6))

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
#4 in addition depends:FLS+6
task add project:'Techniques'.'Imaging'.'Monitoring flow' Test monitoring on various microscopes depends:$((FLW+3)) +training
#5
task add project:'Techniques'.'Imaging'.'Monitoring flow' Master monitoring flow depends:$((FLW+5)) +skill
#6
task add project:'Techniques'.'Imaging'.'Monitoring flow' Write our own optimized protocol depends:$((FLW+6)) +create +protocol
COUNTER=$((COUNTER+6))

#----------------------------------------
#- 0.3.4 Culture chamber for live imaging
#----------------------------------------
CCH=$COUNTER
#1
task add project:'Techniques'.'Imaging'.'Culture chamber' Find protocols for live imaging in colonial ascidians +protocol
#2
task add project:'Techniques'.'Imaging'.'Culture chamber' List the required reagents depends:$((CCH+1)) +inventory
#3
task add project:'Techniques'.'Imaging'.'Culture chamber' List the required equipment depends:$((CCH+1)) +inventory
#4
task add project:'Techniques'.'Imaging'.'Culture chamber' Design a flexible culture chamber depends:$((CCH+3)) +create
#5
task add project:'Techniques'.'Imaging'.'Culture chamber' Get the required reagents depends:$((CCH+2)) +purchase
#6
task add project:'Techniques'.'Imaging'.'Culture chamber' Get the required equipment depends:$((CCH+3)),$((CCH+4)) +purchase
#7
task add project:'Techniques'.'Imaging'.'Culture chamber' Test the chamber on the microscopes depends:$((CCH+5)),$((CCH+6)),$((MCR+9)),$((MCR+11)),$((MCR+13)) +training
#8
task add project:'Techniques'.'Imaging'.'Culture chamber' Compare the growth and flow rates with those in the aquarium depends:$((CCH+7)),$((GRW+6)),$((FLW+6)) +imaging
#9
task add project:'Techniques'.'Imaging'.'Culture chamber' Master culture chambers depends:$((CCH+8)) +skill
#10
task add project:'Techniques'.'Imaging'.'Culture chamber' Write our own optimized protocol depends:$((CCH+9)) +create +protocol
COUNTER=$((COUNTER+10))


#========================================
#= 0.4 Molecular biology
#========================================

#----------------------------------------
#- 0.4.1 DNA extraction of B. leachii
#----------------------------------------
DNA=$COUNTER
#1
task add project:'Techniques'.'Molecular biology'.'DNA extraction' Find protocols for DNA extraction in colonial ascidians +protocol
#2
task add project:'Techniques'.'Molecular biology'.'DNA extraction' List the required reagents depends:$((DNA+1)) +inventory
#3
task add project:'Techniques'.'Molecular biology'.'DNA extraction' Get the required reagents depends:$((DNA+2)) +purchase
#4
task add project:'Techniques'.'Molecular biology'.'DNA extraction' Test DNA extraction in colonial ascidians depends:$((DNA+3)) +training
#5
task add project:'Techniques'.'Molecular biology'.'DNA extraction' Master DNA extraction depends:$((DNA+4)) +skill
#6
task add project:'Techniques'.'Molecular biology'.'DNA extraction' Write our own optimized protocol depends:$((DNA+5)) +create +protocol
COUNTER=$((COUNTER+6))

#----------------------------------------
#- 0.4.2 Genotyping by sequencing
#----------------------------------------
SEQ=$COUNTER
#1
task add project:'Techniques'.'Molecular biology'.'Genotype by sequencing' Find protocols for genotyping using sequencing in colonial ascidians +protocol
#2
task add project:'Techniques'.'Molecular biology'.'Genotype by sequencing' List the required reagents depends:$((SEQ+1)) +inventory
#3
task add project:'Techniques'.'Molecular biology'.'Genotype by sequencing' Get the required reagents depends:$((SEQ+2)) +purchase
#4
task add project:'Techniques'.'Molecular biology'.'Genotype by sequencing' Send DNA for sequencing to the suitable company depends:$((SEQ+3)),$((DNA+5)) +purchase
#5
task add project:'Techniques'.'Molecular biology'.'Genotype by sequencing' Blast the sequences to genotype the animals depends:$((SEQ+4)) +skill
#6
task add project:'Techniques'.'Molecular biology'.'Genotype by sequencing' Write our own optimized protocol depends:$((SEQ+5)) +create +protocol
COUNTER=$((COUNTER+6))

#----------------------------------------
#- 0.4.3 Genotyping by PCR
#----------------------------------------
PCR=$COUNTER
#1
task add project:'Techniques'.'Molecular biology'.'Genotype by PCR' Find protocols for genotyping using PCR in colonial ascidians +protocol
#2
task add project:'Techniques'.'Molecular biology'.'Genotype by PCR' List the required reagents depends:$((PCR+1)) +inventory
#3
task add project:'Techniques'.'Molecular biology'.'Genotype by PCR' Get the required reagents depends:$((PCR+2)) +purchase
#4
task add project:'Techniques'.'Molecular biology'.'Genotype by PCR' PCR DNA of various species using several primers depends:$((PCR+3)),$((DNA+5)) +training
#5
task add project:'Techniques'.'Molecular biology'.'Genotype by PCR' Compare the results with genotyping by sequencing depends:$((PCR+4)),$((SEQ+5)) +skill
#6
task add project:'Techniques'.'Molecular biology'.'Genotype by PCR' Write our own optimized protocol depends:$((PCR+5)) +create +protocol
COUNTER=$((COUNTER+6))

#----------------------------------------
#- 0.4.4 RNA interference in B. leachii
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

#========================================
#= 0.5 Image Analysis
#========================================

#----------------------------------------
#- 0.5.1 Haemolymph measurement
#----------------------------------------
FLS=$COUNTER
#1
task add project:'Techniques'.'Image Analysis'.'Haemolymph measurement' Install the code from the Wilson lab +contact
#2
task add project:'Techniques'.'Image Analysis'.'Haemolymph measurement' Adapt the code to Octave depends:$((FLS+1)) +code
#3
task add project:'Techniques'.'Image Analysis'.'Haemolymph measurement' Reanalyze the recodings from the Wilson lab depends:$((FLS+2))
#4
task add project:'Techniques'.'Image Analysis'.'Haemolymph measurement' Simulate synthetic data corresponding to our recording setup depends:$((FLS+3)),$((MCR+9))
#5
task add project:'Techniques'.'Image Analysis'.'Haemolymph measurement' Adapt the code our new recordings depends:$((FLS+4)) +code
#6
task add project:'Techniques'.'Image Analysis'.'Haemolymph measurement' Publish the annotated code depends:$((FLS+5))
task $((FLW+4)) modify depends:$((FLS+6))
#7
task add project:'Techniques'.'Image Analysis'.'Haemolymph measurement' Write a User Manual depends:$((FLS+6)) +create +protocol
COUNTER=$((COUNTER+7))

#----------------------------------------
#- 0.5.2 Colony size
#----------------------------------------
CSZ=$COUNTER
#1
task add project:'Techniques'.'Image Analysis'.'Colony size' Install the code from the Wilson lab +contact
#2
task add project:'Techniques'.'Image Analysis'.'Colony size' Adapt the code to Octave depends:$((CSZ+1)) +code
#3
task add project:'Techniques'.'Image Analysis'.'Colony size' Reanalyze images from the Wilson lab depends:$((CSZ+2))
#4
task add project:'Techniques'.'Image Analysis'.'Colony size' Adapt the code to our new recording setup depends:$((CSZ+3)),$((MCR+8))
#5
task add project:'Techniques'.'Image Analysis'.'Colony size' Fully automatize the code depends$((CSZ+4)) +code
#6
task add project:'Techniques'.'Image Analysis'.'Colony size' Publish the annotated code depends:$((CSZ+5))
task $((GRW+4)) modify depends:$((CSZ+6)) 
#7
task add project:'Techniques'.'Image Analysis'.'Colony size' Write a User Manual depends:$((CSZ+6)) +create +protocol
COUNTER=$((COUNTER+7))

#----------------------------------------
#- 0.5.3 Cell lineaging
#----------------------------------------
CLI=$COUNTER
#1
task add project:'Techniques'.'Image Analysis'.'Cell lineaging' Install the BioEmergences software +contact
#2
task add project:'Techniques'.'Image Analysis'.'Cell lineaging' Obtain sample data from the authors +contact
#3
task add project:'Techniques'.'Image Analysis'.'Cell lineaging' Test the software on the sample data depends:$((CLI+1)),$((CLI+2))
#4 in addition depends:LET+7
task add project:'Techniques'.'Image Analysis'.'Cell lineaging' Simulate synthetic data corresponding to our setup +code
#5
task add project:'Techniques'.'Image Analysis'.'Cell lineaging' Test the software on the synthetic data depends:$((CLI+3)),$((CLI+4))
#6
task add project:'Techniques'.'Image Analysis'.'Cell lineaging' Adapt the code to our data depends:$((CLI+5)) +code
#7
task add project:'Techniques'.'Image Analysis'.'Cell lineaging' Write our User Manual depends:$((CLI+6))
COUNTER=$((COUNTER+7))

#----------------------------------------
#- 0.5.4 3D morphology
#----------------------------------------
M3D=$COUTNER
#1
task add project:'Techniques'.'Image Analysis'.'3D morphology' Install the code from the Wilson lab +contact
#2
task add project:'Techniques'.'Image Analysis'.'3D morphology' Adapt the code to Octave depends:$((M3D+1)) +code 
#3
task add project:'Techniques'.'Image Analysis'.'3D morphology' Acquire new data specific to WBR niches depends:$((MCR+10))
#4
task add project:'Techniques'.'Image Analysis'.'3D morphology' Simulate synthetic data corresponding to these data depends:$((M3D+3)) +code
#5
task add project:'Techniques'.'Image Analysis'.'3D morphology' Adapt the code to our new data depends:$((M3D+2)),$((M3D+4)) +code
#6
task add project:'Techniques'.'Image Analysis'.'3D morphology' Publish the annotated code depends:$((M3D+5)) 
#7
task add project:'Techniques'.'Image Analysis'.'3D morphology' Write a User Manual depends:$((M3D+6)) +create +protocol
COUNTER=$((COUNTER+7))

#----------------------------------------
#- 0.5.5 Mapping to a virtual embryo
#----------------------------------------
MAP=$COUTNER
#1
task add project:'Techniques'.'Image Analysis'.'Virtual embryo' Find protocols for the virtual embryo from ANISEED +protocol
#2
task add project:'Techniques'.'Image Analysis'.'Virtual embryo' Obtain the code and sample data from ANISEED +contact
#3
task add project:'Techniques'.'Image Analysis'.'Virtual embryo' Test the code on sample data depends:$((MAP+1)),$((MAP+2))
#4
task add project:'Techniques'.'Image Analysis'.'Virtual embryo' Define reference axes for the regeneration niche throughout WBR +create
#5
task add project:'Techniques'.'Image Analysis'.'Virtual embryo' Define a mapping function for our 3D morphology data depends:$((MAP+4)) +create
#6
task add project:'Techniques'.'Image Analysis'.'Virtual embryo' Warp our morphology data onto the virtual embryo depends:$((MAP+3)),$((MAP+5))
#7
task add project:'Techniques'.'Image Analysis'.'Virtual embryo' Incorporate the lineaging data onto the virtual embryo depends:$((MAP+6)),$((CLI+3)) +code
#8
task add project:'Techniques'.'Image Analysis'.'Virtual embryo' Publish the annotated code depends:$((MAP+7))
#9
task add project:'Techniques'.'Image Analysis'.'Virtual embryo' Write a User Manual depends:$((MAP+8))
COUNTER=$((COUNTER+9))

#----------------------------------------
#- 0.5.6 Classifying cell types
#----------------------------------------
CCT=$COUTNER
#1
task add project:'Techniques'.'Image Analysis'.'Classifying cell types' Find software for the automated quantification of signal in histological sections +protocol
#2
task add project:'Techniques'.'Image Analysis'.'Classifying cell types' Select candidate machine learning algorithms +protocol
#3
task add project:'Techniques'.'Image Analysis'.'Classifying cell types' Image histological sections of uninjured colonies depends:$((CCT+1)),$((MCR+10)),$((MCR+12))
#4
task add project:'Techniques'.'Image Analysis'.'Classifying cell types' Quantify the signal from the various stains depends:$((CCT+3))
#5
task add project:'Techniques'.'Image Analysis'.'Classifying cell types' Quantify the morphology of the various cells depends:$((CCT+3))
#6
task add project:'Techniques'.'Image Analysis'.'Classifying cell types' 'Manually determine a training set of known cell types' depends:$((CCT+3))
#7
task add project:'Techniques'.'Image Analysis'.'Classifying cell types' Train a classifier to discriminate between cell types depends:$((CCT+2)),$((CCT+4)),$((CCT+5)),$((CCT+6))
#8
task add project:'Techniques'.'Image Analysis'.'Classifying cell types' Quantify the accuracy of the classifier depends:$((CCT+7))
#9
task add project:'Techniques'.'Image Analysis'.'Classifying cell types' Publish the annotated classifier depends:$((CCT+8))
#10
task add project:'Techniques'.'Image Analysis'.'Classifying cell types' Write a User Manual depends:$((CCT+9))
COUNTER=$((COUNTER+10))


########################################
# 1. Characterizing WBR in B. leachii
########################################

#========================================
#= 1.1 Cellular origins of WBR
#========================================

#----------------------------------------
#- 1.1.1 Label the entire tissue
#----------------------------------------
LET=$COUNTER
#1
task add project:'Cellular origins of WBR'.'Label the entire tissue' List the available fluorescent dyes for live labeling +protocol
#2
task add project:'Cellular origins of WBR'.'Label the entire tissue' Assess the autofluorescence of the tissue depends:$((CCH+9)),$((PIG+6)) +imaging
#3
task add project:'Cellular origins of WBR'.'Label the entire tissue' Get the best candidate dyes depends:$((LET+1)),$((LET+2)) +purchase
#4
task add project:'Cellular origins of WBR'.'Label the entire tissue' Test dye delivery conditions depends:$((ANH+5)),$((INJ+7)),$((SOK+6)),$((LET+3)),$((CCH+9)) +training
#5
task add project:'Cellular origins of WBR'.'Label the entire tissue' Asses the tissue affinity and fluorescence of the selected dyes depends:$((LET+4)),$((CCH+9)) +imaging
#6
task add project:'Cellular origins of WBR'.'Label the entire tissue' Compare the growth and flow rates with unstained colonies depends:$((LET+5)),$((GRW+6)),$((FLW+6)) +imaging
#7
task add project:'Cellular origins of WBR'.'Label the entire tissue' Master whole-tissue labeling depends:$((LET+6)) +skill
task $((CLI+4)) modify depends:$((LET+7))
#8
task add project:'Cellular origins of WBR'.'Label the entire tissue' Write our own optimized protocol depends:$((LET+7)) +create +protocol
COUNTER=$((COUNTER+8))

#----------------------------------------
#- 1.1.2 Live imaging for WBR
#----------------------------------------
LIV=$COUNTER
#1
task add project:'Cellular origins of WBR'.'Long-term imaging' Assess the recordable span of the selected dyes depends:$((LET+7)),$((CCH+9)) +imaging
#2
task add project:'Cellular origins of WBR'.'Long-term imaging' Determine the necessary resolution for the analysis depends:$((FLW+6)),$((LBL+7)) +imaging
#3 in addition depends: min WBR, final volume
task add project:'Cellular origins of WBR'.'Long-term imaging' Determine the volume to be recorded for the aquisition depends:$((LIV+2)),$((MIN+7)) +imaging
#4
task add project:'Cellular origins of WBR'.'Long-term imaging' Optimize the acquisition parameters for good signal-to-noise ratio depends:$((LIV+1)),$((LIV+3)),$((MCR+10)),$((MCR+13)) +training
#5
task add project:'Cellular origins of WBR'.'Long-term imaging' Compare with unilluminated colonies to avoid photodamage depends:$((LIV+4)),$((CCH+8)) +imaging
#6
task add project:'Cellular origins of WBR'.'Long-term imaging' Master long-term imaging depends:$((LIV+5)) +skill
#7
task add project:'Cellular origins of WBR'.'Long-term imaging' Write our own optimized protocol depends:$((LIV+6)) +create +protocol
COUNTER=$((COUNTER+7))

#----------------------------------------
#- 1.1.3 Temporal span of WBR initiation
#----------------------------------------
SPN=$COUNTER
#1
task add project:'Cellular origins of WBR'.'Chronology of niche establishment' Devise a reproducible induction of WBR depends:$((IND+5)) +training
#2
task add project:'Cellular origins of WBR'.'Chronology of niche establishment' Fix regenerating colonies at regular time interval for the first 2 days depends:$((SPN+1)),$((FIX+5)) 
#3
task add project:'Cellular origins of WBR'.'Chronology of niche establishment' Determine histologically the chronology of niche establishment depends:$((SPN+2)),$((LBL+7)),$((MCR+10))
COUNTER=$((COUNTER+3))

#----------------------------------------
#- 1.1.4 Finding the origins of WBR
#----------------------------------------
COW=$COUNTER
#1
task add project:'Cellular origins of WBR'.'Backtrack all cells of a niche' Image the entire span of niche establishment depends:$((SPN+3)),$((MCR+11)),$((LIV+6))
#2
task add project:'Cellular origins of WBR'.'Backtrack all cells of a niche' Determine the existing software for manual tracking
#3
task add project:'Cellular origins of WBR'.'Backtrack all cells of a niche' Determine the existing software for automated tracking
#4
task add project:'Cellular origins of WBR'.'Backtrack all cells of a niche' Backtrack all cells of the niche depends:$((COW+1)),$((COW+2)),$((COW+3))
#5
task add project:'Cellular origins of WBR'.'Backtrack all cells of a niche' Find the cellular origins of WBR depends:$((COW+4))
COUNTER=$((COUNTER+5))

#----------------------------------------
#- 1.1.5 Characterize the origins of WBR
#----------------------------------------
CHR=$COUNTER
#1
task add project:'Cellular origins of WBR'.'Characterize the origins of WBR' Identify the origins of WBR in uninjured colonies depends:$((COW+5))
#2
task add project:'Cellular origins of WBR'.'Characterize the origins of WBR' Characterize these cells depends:$((CHR+1)),$((LBL+7))
#3
task add project:'Cellular origins of WBR'.'Characterize the origins of WBR' Isolate these cells depends:$((CHR+1)),$((INJ+7))
#4
task add project:'Cellular origins of WBR'.'Characterize the origins of WBR' Label these cells depends:$((CHR+1)),$((INJ+7))
#5
task add project:'Cellular origins of WBR'.'Characterize the origins of WBR' Ablate these cells depends:$((CHR+1)),$((ABL+5))
#6
task add project:'Cellular origins of WBR'.'Characterize the origins of WBR' RNAi these cells depends:$((CHR+1)),$((RNA+8))
#7
task add project:'Cellular origins of WBR'.'Characterize the origins of WBR' Write a manuscript about these cells depends:$((CHR+2))-$((CHR+6)),$((SPN+3))
COUNTER=$((COUNTER+7))


#========================================
#= 1.2 Atlas of WBR
#========================================

#----------------------------------------
#- 1.2.1 Imaging all of WBR
#----------------------------------------
AIM=$COUNTER
#1
task add project:'Atlas of WBR'.'Imaging all of WBR' Determine the length and overlap of the recording sessions depends:$((MCR+13)),$((LIV+6)),$((COW+1))
#2
task add project:'Atlas of WBR'.'Imaging all of WBR' Image piece-wise the entire span of WBR depends:$((AIM+1))
#3
task add project:'Atlas of WBR'.'Imaging all of WBR' Fix the colonies at the end of each recording session depends:$((AIM+2))
#4
task add project:'Atlas of WBR'.'Imaging all of WBR' Label sections of the fixed colonies depends:$((AIM+3)),$((LBL+7))
#5
task add project:'Atlas of WBR'.'Imaging all of WBR' Image the fixed colonies depends:$((AIM+4)),$((MCR+10)),$((MCR+12))
COUNTER=$((COUNTER+5))

#----------------------------------------
#- 1.2.2 Virtual reconstruction of WBR
#----------------------------------------
VRW=$COUNTER
#1
task add project:'Atlas of WBR'.'Virtual reconstruction of WBR' Segment and track cells throughout WBR depends:$((AIM+2)),$((LIV+6)),$((COW+4))
#2
task add project:'Atlas of WBR'.'Virtual reconstruction of WBR' Reconstruct the morphology of the regeneration niche depends:$((VRW+2)), $((M3D+6))
#3
task add project:'Atlas of WBR'.'Virtual reconstruction of WBR' Map the morphology onto the virtual embryo depends:$((VRW+2)),$((MAP+8))
#4
task add project:'Atlas of WBR'.'Virtual reconstruction of WBR' Synchronize the various recordings depends:$((VRW+2))
#5
task add project:'Atlas of WBR'.'Virtual reconstruction of WBR' Merge the recordings depends:$((VRW+2))
COUNTER=$((COUNTER+5))

#----------------------------------------
#- 1.2.3 Cell specification during WBR
#----------------------------------------
VCT=$COUNTER
#1
task add project:'Atlas of WBR'.'Cell types during WBR' Select the most informative stainings throughout WBR depends:$((LBL+7))
#2
task add project:'Atlas of WBR'.'Cell types during WBR' Label sections of fixed regeneration niches depends:$((VCT+1)),$((AIM+3))
#3
task add project:'Atlas of WBR'.'Cell types during WBR' Classify the cells into cell types depends:$((VCT+2)),$((CCT+9))
#4
task add project:'Atlas of WBR'.'Cell types during WBR' Map and merge cell type onto the cell lineage depends:$((VCT+3)),$((VRW+3))
COUNTER=$((COUNTER+4))

#========================================
#= 1.3 Environment of WBR
#========================================

#MIN: environment minimal, including size of regenerate
#Description of blastogenic cycle in B. leachii

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
