#!/bin/bash

# Script for setting up the various tasks
# for setting up the Blanchoud lab

# Clean the current list of tasks
rm ~/.task/*.data

# For counting how many tasks have been submitted
COUNTER=0

#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# Labels used in the tasks:
#  +analysis
#  +code
#  +contact
#  +create
#  +equipment
#  +experiment
#  +imaging
#  +inventory
#  +manuscript
#  +measurement
#  +protocol
#  +purchase
#  +skill
#  +training
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

########################################
# 0. General techniques
########################################

#========================================
#= 0.1 Handling techniques
#========================================

#----------------------------------------
#- 0.1.0 Transfering B. leachii
#----------------------------------------
TRS=$COUNTER
#1
task add project:'Techniques'.'Handling'.'Transfering' Find protocols for transfering colonial ascidians +protocol
#2
task add project:'Techniques'.'Handling'.'Transfering' List the required equipment depends:$((TRS+1)) +inventory
#3
task add project:'Techniques'.'Handling'.'Transfering' List the required reagents depends:$((TRS+1)) +inventory
#4
task add project:'Techniques'.'Handling'.'Transfering' Get the required equipment depends:$((TRS+2)) +purchase
#5
task add project:'Techniques'.'Handling'.'Transfering' Get the required reagents depends:$((TRS+3)) +purchase
#6
task add project:'Techniques'.'Handling'.'Transfering' Train on subclones of the same colony to identify the best approach depends:$((TRS+4)),$((TRS+5)) +training
#7
task add project:'Techniques'.'Handling'.'Transfering' Master transfering of colonial ascidians depends:$((TRS+6)) +skill
#8
task add project:'Techniques'.'Handling'.'Transfering' Write our own optimized protocol for transfering depends:$((TRS+7)) +create +protocol
COUNTER=$((COUNTER+8))

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
task add project:'Techniques'.'Handling'.'Injection' Write our own optimized protocol for injections depends:$((INJ+7)) +create +protocol
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
task add project:'Techniques'.'Handling'.'Soaking' Write our own optimized protocol for soaking depends:$((SOK+6)) +create +protocol
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
task add project:'Techniques'.'Handling'.'Anesthesia' Write our own optimized protocol for anesthesia depends:$((ANH+5)) +create +protocol
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
task add project:'Techniques'.'Handling'.'Inducing WBR' Master reproducible inductions depends:$((IND+4)) +skill
#6
task add project:'Techniques'.'Handling'.'Inducing WBR' Write our own optimized protocol for inducing WBR depends:$((IND+5)) +create +protocol
COUNTER=$((COUNTER+6))

#----------------------------------------
#- 0.1.5 Laser ablation in B. leachii
#----------------------------------------
ABL=$COUNTER
#1
task add project:'Techniques'.'Handling'.'Laser ablation' Find protocols for laser ablation in colonial ascidians +protocol
#2
task add project:'Techniques'.'Handling'.'Laser ablation' List the required equipment depends:$((ABL+1)) +inventory
#3
task add project:'Techniques'.'Handling'.'Laser ablation' Get the required equipment depends:$((ABL+2)) +purchase
#4 in addition depends:CCH+7 
task add project:'Techniques'.'Handling'.'Laser ablation' Test laser ablation in colonial ascidians depends:$((ABL+3)) +training
#5
task add project:'Techniques'.'Handling'.'Laser ablation' Master laser ablation depends:$((ABL+4)) +skill
#6
task add project:'Techniques'.'Handling'.'Laser ablation' Write our own optimized protocol for laser ablation depends:$((ABL+5)) +create +protocol
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
task add project:'Techniques'.'Handling'.'Remove pigments' Test pigment removal in colonial ascidians depends:$((PIG+4)),$((SOK+6)),$((INJ+7)) +training
#6
task add project:'Techniques'.'Handling'.'Remove pigments' Master pigment removal depends:$((PIG+5)) +skill
#7
task add project:'Techniques'.'Handling'.'Remove pigments' Write our own optimized protocol depends:$((PIG+6)) +create +protocol
COUNTER=$((COUNTER+7))

#----------------------------------------
#- 0.1.7 Haemolymph transfusion
#----------------------------------------
TRF=$COUNTER
#1
task add project:'Techniques'.'Handling'.'Haemolymph transfusion' Find protocols for the collection and labeling of haemolymph in colonial ascidians +protocol
#2
task add project:'Techniques'.'Handling'.'Haemolymph transfusion' List the required reagents depends:$((TRF+1)) +inventory
#3
task add project:'Techniques'.'Handling'.'Haemolymph transfusion' List the required equipment depends:$((TRF+1)) +inventory
#4
task add project:'Techniques'.'Handling'.'Haemolymph transfusion' Get the required material depends:$((TRF+2)),$((TRF+3)) +purchase
#5
task add project:'Techniques'.'Handling'.'Haemolymph transfusion' Test haemocytes collection, labeling and injection depends:$((TRF+4)),$((INJ+7)) +training
#6
task add project:'Techniques'.'Handling'.'Haemolymph transfusion' Test removing cell-cell adhesion for fluidifying haemolymph depends:$((TRF+5)) +training
#7
task add project:'Techniques'.'Handling'.'Haemolymph transfusion' Master haemolymph transfusion depends:$((TRF+6)) +skill
#8
task add project:'Techniques'.'Handling'.'Haemolymph transfusion' Write our own optimized protocol for haemolymph transfusion depends:$((TRF+7)) +create +protocol
COUNTER=$((COUNTER+8))

#----------------------------------------
#- 0.1.8 Electric stimulation
#----------------------------------------
ELC=$COUNTER
#1
task add project:'Techniques'.'Handling'.'Electric stimulation' Find protocols for the electric stimulation of colonial ascidians +protocol
#2
task add project:'Techniques'.'Handling'.'Electric stimulation' List the required reagents depends:$((ELC+1)) +inventory
#3
task add project:'Techniques'.'Handling'.'Electric stimulation' List the required equipment depends:$((ELC+1)) +inventory
#4
task add project:'Techniques'.'Handling'.'Electric stimulation' Get the required material depends:$((ELC+2)),$((ELC+3)) +purchase
#5
task add project:'Techniques'.'Handling'.'Electric stimulation' Test electric stimulations depends:$((ELC+4)) +training
#6
task add project:'Techniques'.'Handling'.'Electric stimulation' Master electric stimulations depends:$((ELC+5)) +skill
#7
task add project:'Techniques'.'Handling'.'Electric stimulation' Write our own optimized protocol for electric stimulations depends:$((ELC+6)) +create +protocol
COUNTER=$((COUNTER+7))

#----------------------------------------
#- 0.1.9 Micro-surgery
#----------------------------------------
MSG=$COUNTER
#1
task add project:'Techniques'.'Handling'.'Micro-surgery' Find protocols for micro-surgery on colonial ascidians +protocol
#2
task add project:'Techniques'.'Handling'.'Micro-surgery' List the required equipment depends:$((MSG+1)) +inventory
#3
task add project:'Techniques'.'Handling'.'Micro-surgery' Get the required material depends:$((MSG+2)) +purchase
#4
task add project:'Techniques'.'Handling'.'Micro-surgery' Devise tests for micro-surgery depends:$((MSG+3)) +inventory
#5
task add project:'Techniques'.'Handling'.'Micro-surgery' Test micro-surgery on colonial ascidians depends:$((MSG+4)) +training
#6
task add project:'Techniques'.'Handling'.'Micro-surgery' Master micro-surgery on colonial ascidians depends:$((MSG+5)) +skill
#7
task add project:'Techniques'.'Handling'.'Micro-surgery' Write our own optimized protocol for micro-surgery depends:$((MSG+6)) +create +protocol
COUNTER=$((COUNTER+7))

#----------------------------------------
#- 0.1.10 Tissue dissociation
#----------------------------------------
TDS=$COUNTER
#1
task add project:'Techniques'.'Handling'.'Tissue dissociation' Find protocols for tissue dissociation of whole colonial ascidians +protocol
#2
task add project:'Techniques'.'Handling'.'Tissue dissociation' List the required reagents depends:$((TDS+1)) +inventory
#3
task add project:'Techniques'.'Handling'.'Tissue dissociation' List the required equipment depends:$((TDS+1)) +inventory
#4
task add project:'Techniques'.'Handling'.'Tissue dissociation' Get the required material depends:$((TDS+2)),$((TDS+3)) +purchase
#5 in addition depends:EHA+4
task add project:'Techniques'.'Handling'.'Tissue dissociation' Test tissue dissociation on ascidian tissues depends:$((TDS+4)) +training
#6
task add project:'Techniques'.'Handling'.'Tissue dissociation' Master tissue dissociation on colonial ascidians depends:$((TDS+5)) +skill
#7
task add project:'Techniques'.'Handling'.'Tissue dissociation' Write our own optimized protocol for tissue dissociation depends:$((TDS+6)) +create +protocol
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
task add project:'Techniques'.'Histology'.'Fixing colonies' Write our own optimized protocol for fixing depends:$((FIX+5)) +create +protocol
COUNTER=$((COUNTER+6))

#----------------------------------------
#- 0.2.2 Cryosectioning fixed colonies
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
task add project:'Techniques'.'Histology'.'Sectioning' Write our own optimized protocol for sectioning depends:$((SEC+5)) +create +protocol
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
task add project:'Techniques'.'Histology'.'Labeling sections' Write our own optimized protocols for labeling sections depends:$((LBL+7)) +create +protocol
COUNTER=$((COUNTER+8))

#----------------------------------------
#- 0.2.4 Determine cell types
#----------------------------------------
DCT=$COUNTER
#1
task add project:'Techniques'.'Histology'.'Determine cell types' Find protocols for determining cells types in colonial ascidians +protocols
#2
task add project:'Techniques'.'Histology'.'Determine cell types' Find protocols describing organogenesis in colonial ascidians +protocols
#3
task add project:'Techniques'.'Histology'.'Determine cell types' Select the most informative stainings for WBR depends:$((DCT+1)),$((DCT+2)) +inventory
#4
task add project:'Techniques'.'Histology'.'Determine cell types' Get the selected stains depends:$((DCT+3)) +purchase
#5
task add project:'Techniques'.'Histology'.'Determine cell types' Stain histological sections of uninjured colonies depends:$((DCT+4)),$((LBL+7)) +experiment
#6
task add project:'Techniques'.'Histology'.'Determine cell types' Train on cell type identification using reported cell type depends:$((DCT+5)),$((MCR+10)),$((MCR+12)) +training
#7
task add project:'Techniques'.'Histology'.'Determine cell types' Master cell type identification depends:$((DCT+6)) +skill
#8
task add project:'Techniques'.'Histology'.'Determine cell types' Write our own optimized protocol for cell identification depends:$((DCT+7)) +create +protocol
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
#4 in addition depends:CSZ+4
task add project:'Techniques'.'Imaging'.'Monitoring growth' Test monitoring on various imaging conditions depends:$((GRW+3)) +training
#5
task add project:'Techniques'.'Imaging'.'Monitoring growth' Master monitoring depends:$((GRW+4)) +skill
#6
task add project:'Techniques'.'Imaging'.'Monitoring growth' Write our own optimized protocol for monitoring growth depends:$((GRW+5)) +create +protocol
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
#4 in addition depends:FLS+5
task add project:'Techniques'.'Imaging'.'Monitoring flow' Test monitoring on various microscopes depends:$((FLW+3)) +training
#5
task add project:'Techniques'.'Imaging'.'Monitoring flow' Master monitoring flow depends:$((FLW+4)) +skill
#6
task add project:'Techniques'.'Imaging'.'Monitoring flow' Write our own optimized protocol for monitoring flow depends:$((FLW+5)) +create +protocol
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
task $((ABL+4)) modify depends:$((CCH+7)) 
#8 in addition depends:BCS+6
task add project:'Techniques'.'Imaging'.'Culture chamber' Compare the growth and flow rates with those in the aquarium depends:$((CCH+7)),$((GRW+6)),$((FLW+6)) +imaging
#9
task add project:'Techniques'.'Imaging'.'Culture chamber' Master culture chambers depends:$((CCH+8)) +skill
#10
task add project:'Techniques'.'Imaging'.'Culture chamber' Write our own optimized protocol for culture chambers depends:$((CCH+9)) +create +protocol
COUNTER=$((COUNTER+10))

#----------------------------------------
#- 0.3.5 Tunicin labeling
#----------------------------------------
TUL=$COUNTER
#1
task add project:'Techniques'.'Imaging'.'Tunicin labeling' Gather publications about tunicin in colonial ascidians +inventory
#2
task add project:'Techniques'.'Imaging'.'Tunicin labeling' Identify candidate dyes that can bind to tunicin depends:$((TUL+1)) +inventory
#3
task add project:'Techniques'.'Imaging'.'Tunicin labeling' List the required reagents depends:$((TUL+2)) +inventory
#4
task add project:'Techniques'.'Imaging'.'Tunicin labeling' Get the required reagents depends:$((TUL+3)) +purchase
#5
task add project:'Techniques'.'Imaging'.'Tunicin labeling' Test tunicin labeling in colonial ascidians depends:$((TUL+4)),$((MCR+8)),$((MCR+10)),$((MCR+12)),$((SOK+6)) +training
#6
task add project:'Techniques'.'Imaging'.'Tunicin labeling' Master tunicin labeling depends:$((TUL+5)) +skill
#7
task add project:'Techniques'.'Imaging'.'Tunicin labeling' Write our own optimized protocol for tunicin labeling depends:$((TUL+6)) +create +protocol
COUNTER=$((COUNTER+7))


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
task add project:'Techniques'.'Molecular biology'.'DNA extraction' Write our own optimized protocol for DNA extraction depends:$((DNA+5)) +create +protocol
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
task add project:'Techniques'.'Molecular biology'.'Genotype by sequencing' Write our own optimized protocol for genotyping depends:$((SEQ+5)) +create +protocol
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
task add project:'Techniques'.'Molecular biology'.'Genotype by PCR' Write our own optimized protocol for PCR genotyping depends:$((PCR+5)) +create +protocol
COUNTER=$((COUNTER+6))

#----------------------------------------
#- 0.4.4 RNA interference in B. leachii
#----------------------------------------
RNA=$COUNTER
#1
task add project:'Techniques'.'Molecular biology'.'RNA interference' Find protocols for RNAi in colonial ascidians +protocol
#2
task add project:'Techniques'.'Molecular biology'.'RNA interference' List the required reagents depends:$((RNA+1)) +inventory
#3
task add project:'Techniques'.'Molecular biology'.'RNA interference' List the required equipment depends:$((RNA+1)) +inventory
#4
task add project:'Techniques'.'Molecular biology'.'RNA interference' Design a probe for positive control tests depends:$((RNA+1)) +inventory
#5
task add project:'Techniques'.'Molecular biology'.'RNA interference' Get the required reagents depends:$((RNA+2)),$((RNA+4)) +purchase
#6
task add project:'Techniques'.'Molecular biology'.'RNA interference' Get the required equipment depends:$((RNA+3)) +purchase
#7
task add project:'Techniques'.'Molecular biology'.'RNA interference' Test RNAi in colonial ascidians depends:$((RNA+5)),$((RNA+6)),$((ANH+5)),$((INJ+7)),$((SOK+6)),$((CCH+9)) +training
#8
task add project:'Techniques'.'Molecular biology'.'RNA interference' Master RNAi depends:$((RNA+7)) +skill
#9
task add project:'Techniques'.'Molecular biology'.'RNA interference' Write our own optimized protocol for RNAi depends:$((RNA+8)) +create +protocol
COUNTER=$((COUNTER+9))

#----------------------------------------
#- 0.4.5 single cell RNA seq
#----------------------------------------
SCR=$COUNTER
#1
task add project:'Techniques'.'Molecular biology'.'scRNA sequencing' Get information on the existing approaches for scRNA seq +contact 
#2
task add project:'Techniques'.'Molecular biology'.'scRNA sequencing' Identify the technology most appropriated for WBR depends:$((SCR+1)) +inventory
#3
task add project:'Techniques'.'Molecular biology'.'scRNA sequencing' Find protocols for scRNA in colonial ascidians depends:$((SCR+2)) +protocol
#4
task add project:'Techniques'.'Molecular biology'.'scRNA sequencing' Prepare haemocytes according to the specifics of the analysis platfrom depends:$((SCR+3)),$((TRF+7))
#5
task add project:'Techniques'.'Molecular biology'.'scRNA sequencing' Send for library preparation and sequencing depends:$((SCR+4)) +contact
#6
task add project:'Techniques'.'Molecular biology'.'scRNA sequencing' Analyze the sequencing results depends:$((SCR+5)) +code
#7
task add project:'Techniques'.'Molecular biology'.'scRNA sequencing' Write our own optimized protocol for scRNA depends:$((SCR+6)) +create +protocol
COUNTER=$((COUNTER+7))

#----------------------------------------
#- 0.4.6 Cell sorting
#----------------------------------------
CST=$COUNTER
#1
task add project:'Techniques'.'Molecular biology'.'Cell sorting' Find protocols for cell sorting in colonial ascidians +protocol
#2
task add project:'Techniques'.'Molecular biology'.'Cell sorting' List the required reagents depends:$((CST+1)) +inventory
#3
task add project:'Techniques'.'Molecular biology'.'Cell sorting' Get the required reagents depends:$((CST+2)) +purchase
#4
task add project:'Techniques'.'Molecular biology'.'Cell sorting' Test cell sorting on haemolymph depends:$((CST+3)),$((TRF+7)) +training
#5 in addition depends:EHA+4
task add project:'Techniques'.'Molecular biology'.'Cell sorting' Assess the sorting specificity by counting depends:$((CST+4)) +training
#6
task add project:'Techniques'.'Molecular biology'.'Cell sorting' Master cell sorting depends:$((CST+5)) +skill
#7
task add project:'Techniques'.'Molecular biology'.'Cell sorting' Write our own optimized protocol for cell sorting depends:$((CST+6)) +create +protocol
COUNTER=$((COUNTER+7))

#----------------------------------------
#- 0.4.7 Proteomics
#----------------------------------------
PRT=$COUNTER
#1
task add project:'Techniques'.'Molecular biology'.'Proteomics' Find protocols on proteomics in colonial ascidians +protocol
#2
task add project:'Techniques'.'Molecular biology'.'Proteomics' Get support from the local platform depends:$((PRT+1)) +contact
#3
task add project:'Techniques'.'Molecular biology'.'Proteomics' List the required reagents depends:$((PRT+2)) +inventory
#4
task add project:'Techniques'.'Molecular biology'.'Proteomics' Get the required reagents depends:$((PRT+3)) +purchase
#5
task add project:'Techniques'.'Molecular biology'.'Proteomics' Test proteomics analysis in haemolymph depends:$((PRT+4)),$((TRF+7)) +training
#6
task add project:'Techniques'.'Molecular biology'.'Proteomics' Master proteomics analysis in colonial ascidians depends:$((PRT+5)) +skill
#7
task add project:'Techniques'.'Molecular biology'.'Proteomics' Write our own optimized protocol for proteomics depends:$((PRT+6)) +create +protocol
COUNTER=$((COUNTER+7))


#========================================
#= 0.5 Image analysis
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
task add project:'Techniques'.'Image Analysis'.'Haemolymph measurement' Reanalyze the recodings from the Wilson lab depends:$((FLS+2)) +experiment
#4
task add project:'Techniques'.'Image Analysis'.'Haemolymph measurement' Simulate synthetic data corresponding to our recording setup depends:$((FLS+3)),$((MCR+9)) +experiment
#5
task add project:'Techniques'.'Image Analysis'.'Haemolymph measurement' Adapt the code our new recordings depends:$((FLS+4)) +code
#6
task add project:'Techniques'.'Image Analysis'.'Haemolymph measurement' Publish the annotated code depends:$((FLS+5)) +manuscript
task $((FLW+4)) modify depends:$((FLS+6))
#7
task add project:'Techniques'.'Image Analysis'.'Haemolymph measurement' Write a User Manual for haemolymph measurement depends:$((FLS+6)) +create +protocol
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
task add project:'Techniques'.'Image Analysis'.'Colony size' Reanalyze images from the Wilson lab depends:$((CSZ+2)) +analysis
#4
task add project:'Techniques'.'Image Analysis'.'Colony size' Adapt the code to our new recording setup depends:$((CSZ+3)),$((MCR+8)) +code
#5
task add project:'Techniques'.'Image Analysis'.'Colony size' Fully automatize the code depends:$((CSZ+4)) +code
#6
task add project:'Techniques'.'Image Analysis'.'Colony size' Publish the annotated code depends:$((CSZ+5)) +manuscript
task $((GRW+4)) modify depends:$((CSZ+6)) 
#7
task add project:'Techniques'.'Image Analysis'.'Colony size' Write a User Manual for colony size measurement depends:$((CSZ+6)) +create +protocol
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
task add project:'Techniques'.'Image Analysis'.'Cell lineaging' Test the software on the sample data depends:$((CLI+1)),$((CLI+2)) +training
#4 in addition depends:LET+7
task add project:'Techniques'.'Image Analysis'.'Cell lineaging' Simulate synthetic data corresponding to our setup +code
#5
task add project:'Techniques'.'Image Analysis'.'Cell lineaging' Test the software on the synthetic data depends:$((CLI+3)),$((CLI+4)) +experiment
#6
task add project:'Techniques'.'Image Analysis'.'Cell lineaging' Adapt the code to our data depends:$((CLI+5)) +code
#7
task add project:'Techniques'.'Image Analysis'.'Cell lineaging' Write our User Manual for cell lineaging depends:$((CLI+6)) +create +protocol
COUNTER=$((COUNTER+7))

#----------------------------------------
#- 0.5.4 3D morphology
#----------------------------------------
M3D=$COUNTER
#1
task add project:'Techniques'.'Image Analysis'.'3D morphology' Install the code from the Wilson lab +contact
#2
task add project:'Techniques'.'Image Analysis'.'3D morphology' Adapt the code to Octave depends:$((M3D+1)) +code 
#3
task add project:'Techniques'.'Image Analysis'.'3D morphology' Acquire new data specific to WBR niches depends:$((MCR+10)) +imaging
#4
task add project:'Techniques'.'Image Analysis'.'3D morphology' Simulate synthetic data corresponding to these data depends:$((M3D+3)) +code
#5
task add project:'Techniques'.'Image Analysis'.'3D morphology' Adapt the code to our new data depends:$((M3D+2)),$((M3D+4)) +code
#6
task add project:'Techniques'.'Image Analysis'.'3D morphology' Publish the annotated code depends:$((M3D+5)) +manuscript
#7
task add project:'Techniques'.'Image Analysis'.'3D morphology' Write a User Manual for 3D morphology depends:$((M3D+6)) +create +protocol
COUNTER=$((COUNTER+7))

#----------------------------------------
#- 0.5.5 Mapping to a virtual embryo
#----------------------------------------
MVE=$COUNTER
#1
task add project:'Techniques'.'Image Analysis'.'Virtual embryo' Find protocols for the virtual embryo from ANISEED +protocol
#2
task add project:'Techniques'.'Image Analysis'.'Virtual embryo' Obtain the code and sample data from ANISEED +contact
#3
task add project:'Techniques'.'Image Analysis'.'Virtual embryo' Test the code on sample data depends:$((MVE+1)),$((MVE+2)) +training
#4
task add project:'Techniques'.'Image Analysis'.'Virtual embryo' Define reference axes for the regeneration niche throughout WBR +analysis
#5
task add project:'Techniques'.'Image Analysis'.'Virtual embryo' Define a mapping function for our 3D morphology data depends:$((MVE+4)) +analysis
#6
task add project:'Techniques'.'Image Analysis'.'Virtual embryo' Warp our morphology data onto the virtual embryo depends:$((MVE+3)),$((MVE+5)) +code
#7
task add project:'Techniques'.'Image Analysis'.'Virtual embryo' Incorporate the lineaging data onto the virtual embryo depends:$((MVE+6)),$((CLI+3)) +code
#8
task add project:'Techniques'.'Image Analysis'.'Virtual embryo' Publish the annotated code depends:$((MVE+7)) +manuscript
#9
task add project:'Techniques'.'Image Analysis'.'Virtual embryo' Write a User Manual depends:$((MVE+8)) +create +protocol
COUNTER=$((COUNTER+9))

#----------------------------------------
#- 0.5.6 Classifying cell types
#----------------------------------------
CCT=$COUNTER
#1
task add project:'Techniques'.'Image Analysis'.'Classifying cell types' Find software for the automated quantification of signal in histological sections +inventory
#2
task add project:'Techniques'.'Image Analysis'.'Classifying cell types' Select candidate machine learning algorithms +inventory
#3
task add project:'Techniques'.'Image Analysis'.'Classifying cell types' Image histological sections of uninjured colonies depends:$((CCT+1)),$((DCT+7)) +imaging
#4
task add project:'Techniques'.'Image Analysis'.'Classifying cell types' Quantify the signal from the various stains depends:$((CCT+3)) +measurement
#5
task add project:'Techniques'.'Image Analysis'.'Classifying cell types' Quantify the morphology of the various cells depends:$((CCT+3)) +measurement
#6
task add project:'Techniques'.'Image Analysis'.'Classifying cell types' 'Manually determine a training set of known cell types' depends:$((CCT+3)) +analysis
#7
task add project:'Techniques'.'Image Analysis'.'Classifying cell types' Train a classifier to discriminate between cell types depends:$((CCT+2)),$((CCT+4)),$((CCT+5)),$((CCT+6)) +code
#8
task add project:'Techniques'.'Image Analysis'.'Classifying cell types' Quantify the accuracy of the classifier depends:$((CCT+7)) +analysis
#9
task add project:'Techniques'.'Image Analysis'.'Classifying cell types' Publish the annotated classifier depends:$((CCT+8)) +manuscript +code
#10
task add project:'Techniques'.'Image Analysis'.'Classifying cell types' Write a User Manual for the classifier depends:$((CCT+9)) +create +protocol
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
task add project:'Cellular origins of WBR'.'Label the entire tissue' List the available fluorescent dyes for live labeling +inventory
#2
task add project:'Cellular origins of WBR'.'Label the entire tissue' Assess the autofluorescence of the tissue depends:$((CCH+9)),$((PIG+6)) +imaging
#3
task add project:'Cellular origins of WBR'.'Label the entire tissue' Get the best candidate dyes depends:$((LET+1)),$((LET+2)) +purchase
#4
task add project:'Cellular origins of WBR'.'Label the entire tissue' Test dye delivery conditions depends:$((ANH+5)),$((INJ+7)),$((SOK+6)),$((LET+3)),$((CCH+9)) +training
#5
task add project:'Cellular origins of WBR'.'Label the entire tissue' Assess the tissue affinity and fluorescence of the selected dyes depends:$((LET+4)),$((CCH+9)) +imaging
#6
task add project:'Cellular origins of WBR'.'Label the entire tissue' Compare the growth and flow rates with unstained colonies depends:$((LET+5)),$((GRW+6)),$((FLW+6)) +measurement
#7
task add project:'Cellular origins of WBR'.'Label the entire tissue' Master whole-tissue labeling depends:$((LET+6)) +skill
task $((CLI+4)) modify depends:$((LET+7))
#8
task add project:'Cellular origins of WBR'.'Label the entire tissue' Write our own optimized protocol for live labeling depends:$((LET+7)) +create +protocol
COUNTER=$((COUNTER+8))

#----------------------------------------
#- 1.1.2 Live imaging for WBR
#----------------------------------------
LIV=$COUNTER
#1
task add project:'Cellular origins of WBR'.'Long-term imaging' Assess the recordable span of the selected dyes depends:$((LET+7)),$((CCH+9)) +imaging
#2
task add project:'Cellular origins of WBR'.'Long-term imaging' Determine the necessary resolution for the analysis depends:$((FLW+6)),$((LBL+7)) +imaging
#3 in addition depends:EVS+4
task add project:'Cellular origins of WBR'.'Long-term imaging' Determine the volume to be recorded for the aquisition, including the regenerated zooid depends:$((LIV+2)),$((IND+5)) +imaging
#4
task add project:'Cellular origins of WBR'.'Long-term imaging' Optimize the acquisition parameters for good signal-to-noise ratio depends:$((LIV+1)),$((LIV+3)),$((MCR+10)),$((MCR+13)) +training
#5
task add project:'Cellular origins of WBR'.'Long-term imaging' Compare with unilluminated colonies to avoid photodamage depends:$((LIV+4)),$((CCH+8)) +imaging
#6
task add project:'Cellular origins of WBR'.'Long-term imaging' Master long-term imaging depends:$((LIV+5)) +skill
#7
task add project:'Cellular origins of WBR'.'Long-term imaging' Write our own optimized protocol for long-term imaging depends:$((LIV+6)) +create +protocol
COUNTER=$((COUNTER+7))

#----------------------------------------
#- 1.1.3 Temporal span of WBR initiation
#----------------------------------------
SPN=$COUNTER
#1 in addition depends:EVS+4
task add project:'Cellular origins of WBR'.'Chronology of niche establishment' Induce reproducibly WBR in minimal vascular systems depends:$((IND+5)) +experiment
#2
task add project:'Cellular origins of WBR'.'Chronology of niche establishment' Fix regenerating colonies at regular time interval for the first 2 days depends:$((SPN+1)),$((FIX+5)) +experiment
#3
task add project:'Cellular origins of WBR'.'Chronology of niche establishment' Determine histologically the chronology of niche establishment depends:$((SPN+2)),$((LBL+7)),$((MCR+10)) +analysis
COUNTER=$((COUNTER+3))

#----------------------------------------
#- 1.1.4 Finding the origins of WBR
#----------------------------------------
COW=$COUNTER
#1
task add project:'Cellular origins of WBR'.'Backtrack all cells of a niche' Image the entire span of niche establishment depends:$((SPN+3)),$((MCR+11)),$((LIV+6)) +imaging
#2
task add project:'Cellular origins of WBR'.'Backtrack all cells of a niche' Determine the existing software for manual tracking +inventory
#3
task add project:'Cellular origins of WBR'.'Backtrack all cells of a niche' Determine the existing software for automated tracking depends:$((CLI+3)) +inventory
#4
task add project:'Cellular origins of WBR'.'Backtrack all cells of a niche' Backtrack all cells of the niche depends:$((COW+1)),$((COW+2)),$((COW+3)),$((CLI+6)) +experiment
#5
task add project:'Cellular origins of WBR'.'Backtrack all cells of a niche' Find the cellular origins of WBR depends:$((COW+4)) +analysis
COUNTER=$((COUNTER+5))

#----------------------------------------
#- 1.1.5 Characterize the origins of WBR
#----------------------------------------
CHR=$COUNTER
#1
task add project:'Cellular origins of WBR'.'Characterize the origins of WBR' Identify the cells at the origins of WBR in uninjured colonies depends:$((COW+5)) +analysis
#2
task add project:'Cellular origins of WBR'.'Characterize the origins of WBR' Characterize these cells depends:$((CHR+1)),$((LBL+7)) +experiment
#3
task add project:'Cellular origins of WBR'.'Characterize the origins of WBR' Isolate these cells depends:$((CHR+1)),$((TRF+7)) +experiment
#4
task add project:'Cellular origins of WBR'.'Characterize the origins of WBR' Label these cells depends:$((CHR+1)),$((TRF+7)) +experiment
#5
task add project:'Cellular origins of WBR'.'Characterize the origins of WBR' Ablate these cells depends:$((CHR+1)),$((ABL+5)) +experiment
#6
task add project:'Cellular origins of WBR'.'Characterize the origins of WBR' RNAi these cells depends:$((CHR+1)),$((RNA+8)) +experiment
#7
task add project:'Cellular origins of WBR'.'Characterize the origins of WBR' Write a manuscript about these cells depends:$((CHR+2))-$((CHR+6)),$((SPN+3)) +create +manuscript
COUNTER=$((COUNTER+7))


#========================================
#= 1.2 Atlas of WBR
#========================================

#----------------------------------------
#- 1.2.1 Imaging all of WBR
#----------------------------------------
AIM=$COUNTER
#1
task add project:'Atlas of WBR'.'Imaging all of WBR' Determine the length and overlap of the recording sessions depends:$((MCR+13)),$((LIV+6)),$((COW+1)) +experiment
#2
task add project:'Atlas of WBR'.'Imaging all of WBR' Image piece-wise the entire span of WBR depends:$((AIM+1)),$((MCR+13)) +imaging
#3
task add project:'Atlas of WBR'.'Imaging all of WBR' Fix the colonies at the end of each recording session depends:$((AIM+2)),$((FIX+5)) +experiment
#4
task add project:'Atlas of WBR'.'Imaging all of WBR' Label sections of the fixed colonies depends:$((AIM+3)),$((LBL+7)) +expriment
#5
task add project:'Atlas of WBR'.'Imaging all of WBR' Image the fixed colonies depends:$((AIM+4)),$((MCR+10)),$((MCR+12)) +imaging
COUNTER=$((COUNTER+5))

#----------------------------------------
#- 1.2.2 Virtual reconstruction of WBR
#----------------------------------------
VRW=$COUNTER
#1
task add project:'Atlas of WBR'.'Virtual reconstruction of WBR' Segment and track cells throughout WBR depends:$((AIM+2)),$((LIV+6)),$((COW+4)) +analysis
#2
task add project:'Atlas of WBR'.'Virtual reconstruction of WBR' Reconstruct the morphology of the regeneration niche depends:$((VRW+1)),$((M3D+6)) +code
#3
task add project:'Atlas of WBR'.'Virtual reconstruction of WBR' Map the morphology onto the virtual embryo depends:$((VRW+2)),$((MVE+8)) +code
#4
task add project:'Atlas of WBR'.'Virtual reconstruction of WBR' Synchronize the various recordings depends:$((VRW+3)) +code
#5
task add project:'Atlas of WBR'.'Virtual reconstruction of WBR' Merge the recordings depends:$((VRW+4)) +code
#6
task add project:'Atlas of WBR'.'Virtual reconstruction of WBR' Publish our reference altas of WBR morphology depends:$((VRW+5)) +create +protocol
COUNTER=$((COUNTER+6))

#----------------------------------------
#- 1.2.3 Cell specification during WBR
#----------------------------------------
VCT=$COUNTER
#1
task add project:'Atlas of WBR'.'Cell types during WBR' Select the most informative stainings throughout WBR depends:$((LBL+7)) +inventory
#2
task add project:'Atlas of WBR'.'Cell types during WBR' Label sections of fixed regeneration niches depends:$((VCT+1)),$((AIM+3)) +experiment
#3
task add project:'Atlas of WBR'.'Cell types during WBR' Classify the cells into cell types depends:$((VCT+2)),$((CCT+9)) +analysis
#4
task add project:'Atlas of WBR'.'Cell types during WBR' Map and merge cell type onto the cell lineage depends:$((VCT+3)),$((VRW+3)) +code
#5
task add project:'Atlas of WBR'.'Cell types during WBR' Publish our complete reference altas of WBR depends:$((VCT+4)) +create +protocol
#6
task add project:'Atlas of WBR'.'Cell types during WBR' Write a manuscript about this atlas depends:$((VCT+5)) +create +manuscript
COUNTER=$((COUNTER+6))
echo $((COUNTER))

#========================================
#= 1.3 Environment of WBR
#========================================

#----------------------------------------
#- 1.3.1 Haemocytes
#----------------------------------------
EHA=$COUNTER
#1
task add project:'Environment of WBR'.'Haemocytes' Find protocols for the identification of haemocytes in colonial ascidians  +protocol
#2
task add project:'Environment of WBR'.'Haemocytes' Determine the most informative stainings for haemocytes depends:$((EHA+1)) +analysis
#3
task add project:'Environment of WBR'.'Haemocytes' Stain blood smears and whole colonies depends:$((EHA+2)),$((TRF+7)) +experiments
#4
task add project:'Environment of WBR'.'Haemocytes' Devise an identification scheme for all the vascular cells depends:$((EHA+3)) +analysis
task $((CST+6)) modify depends:$((EHA+4))
task $((TDS+5)) modify depends:$((EHA+4))
#5
task add project:'Environment of WBR'.'Haemocytes' Quantify haemocyte composition throughout WBR by counting depends:$((EHA+4)),$((IND+5)) +experiment
#6
task add project:'Environment of WBR'.'Haemocytes' Characterize haemocytes throughout WBR using scRNA-seq depends:$((EHA+1)),$((SCR+6)),$((IND+5)),$((TDS+5)) +experiment
#7
task add project:'Environment of WBR'.'Haemocytes' Alter haemocyte composition using transfusion depends:$((EHA+5)) +experiment
#8
task add project:'Environment of WBR'.'Haemocytes' Alter haemocyte composition using cell sorting depends:$((EHA+5)),$((CST+6)) +experiment
#9
task add project:'Environment of WBR'.'Haemocytes' Trace cell types using labeling of isolated haemocytes depends:$((EHA+5)),$((MCR+13)) +experiment
#10
task add project:'Environment of WBR'.'Haemocytes' Identify which cell types are necessary for WBR depends:$((EHA+6)),$((EHA+7)),$((EHA+8)),$((EHA+9)) +analysis
#11
task add project:'Environment of WBR'.'Haemocytes' Write a manuscript on haemocytes during WBR depends:$((EHA+10)) +create +manuscript
COUNTER=$((COUNTER+11))

#----------------------------------------
#- 1.3.2 Haemolymph flow
#----------------------------------------
EHF=$COUNTER
#1
task add project:'Environment of WBR'.'Haemolymph flow' Gather publications about haemolymph flow in colonial ascidians +inventory
#2
task add project:'Environment of WBR'.'Haemolymph flow' Monitor haemolymph flow in isolated vessels depends:$((FLW+5)) +imaging
#3
task add project:'Environment of WBR'.'Haemolymph flow' Study how flow is sustained during WBR depends:$((EHF+1)),$((EHF+2)) +imaging
#4
task add project:'Environment of WBR'.'Haemolymph flow' Alter flow by ablating ampullae depends:$((EHF+3)),$((MSG+6)) +experiment
#5
task add project:'Environment of WBR'.'Haemolymph flow' Alter flow using anaesthesia depends:$((EHF+3)),$((ANH+5)) +experiment
#6
task add project:'Environment of WBR'.'Haemolymph flow' Alter flow by injections depends:$((EHF+3)),$((INJ+7)) +experiment
#7
task add project:'Environment of WBR'.'Haemolymph flow' Alter flow by electric stimulations depends:$((EHF+3)),$((ELC+6)) +experiment
#8
task add project:'Environment of WBR'.'Haemolymph flow' Alter flow by chemical stimulation depends:$((EHF+3)),$((INJ+7)) +experiment
#9
task add project:'Environment of WBR'.'Haemolymph flow' Identify the necessary flow during WBR depends:$((EHF+4)),$((EHF+5)),$((EHF+6)),$((EHF+7)),$((EHF+8)) +analysis
#10
task add project:'Environment of WBR'.'Haemolymph flow' Write a manuscript on haemolymph flow during WBR depends:$((EHF+9)) +create +manuscript
COUNTER=$((COUNTER+10))

#----------------------------------------
#- 1.3.3 Vascular system
#----------------------------------------
EVS=$COUNTER
#1
task add project:'Environment of WBR'.'Vascular system' Gather publications about the vascular system in colonial ascidians +inventory
#2
task add project:'Environment of WBR'.'Vascular system' Find and test markers that label the vascular system depends:$((EVS+1)) +training
#3
task add project:'Environment of WBR'.'Vascular system' Map the evolution of the vascular system in isolated vessels depends:$((IND+5)) +imaging
#4
task add project:'Environment of WBR'.'Vascular system' Identify the minimal vascular system required for WBR depends:$((EVS+2)),$((EVS+3)) +imaging
task $((LIV+3)) modify depends:$((EVS+4))
task $((SPN+1)) modify depends:$((EVS+4))
#5
task add project:'Environment of WBR'.'Vascular system' Alter the vascular network by targeted isolation depends:$((EVS+4)) +experiment
#6
task add project:'Environment of WBR'.'Vascular system' Alter the vascular network by modulating angiogenesis depends:$((EVS+4)),$((INJ+7)),$((RNA+8)) +experiment
#7
task add project:'Environment of WBR'.'Vascular system' Alter the vascular network by micro-surgeries depends:$((EVS+4)),$((MSG+6)) +experiment
#8
task add project:'Environment of WBR'.'Vascular system' Identify the impact of the vascular network during WBR depends:$((EVS+5)),$((EVS+6)),$((EVS+7)) +analysis
#9
task add project:'Environment of WBR'.'Vascular system' Write a manuscript on the vascular system during WBR depends:$((EVS+8)) +create +manuscript
COUNTER=$((COUNTER+9))

#----------------------------------------
#- 1.3.4 Tunic
#----------------------------------------
ETU=$COUNTER
#1
task add project:'Environment of WBR'.'Tunic' Gather publications about tunicin production in tunicates +inventory
#2
task add project:'Environment of WBR'.'Tunic' Identify the pathways involved in tunicin production depends:$((ETU+1)) +analysis
#3
task add project:'Environment of WBR'.'Tunic' Monitor the evolution of the tunic during WBR depends:$((ETU+1)),$((TUL+6)) +imaging
#4
task add project:'Environment of WBR'.'Tunic' Alter the tunic by micro-surgeries depends:$((ETU+3)),$((MSG+6)) +experiment
#5
task add project:'Environment of WBR'.'Tunic' Alter the tunic by RNAi depends:$((ETU+2)),$((ETU+3)),$((RNA+8)) +experiment
#6
task add project:'Environment of WBR'.'Tunic' Alter the tunic by injecting chemicals depends:$((ETU+2)),$((ETU+3)),$((INJ+7)) +experiment
#7
task add project:'Environment of WBR'.'Tunic' Identify the impact of the tunic on WBR depends:$((ETU+4)),$((ETU+5)),$((ETU+6)) +analysis
#8
task add project:'Environment of WBR'.'Tunic' Write a manuscript on the tunic during WBR depends:$((ETU+7)) +create +manuscript
COUNTER=$((COUNTER+8))

#----------------------------------------
#- 1.3.5 Metabolites
#----------------------------------------
EMT=$COUNTER
#1
task add project:'Environment of WBR'.'Metabolites' Gather publications about metabolites in colonial ascidians +inventory
#2
task add project:'Environment of WBR'.'Metabolites' Identify circulating metabolites to be used as controls depends:$((EMT+1)) +analysis
#3
task add project:'Environment of WBR'.'Metabolites' Monitor the variations of metabolites during WBR using Western blots depends:$((EMT+2)) +experiment
#4
task add project:'Environment of WBR'.'Metabolites' Quantify the evolution of metabolites during WBR using proteomics depends:$((EMT+3)),$((PRT+6)) +measurement
#5
task add project:'Environment of WBR'.'Metabolites' Alter metabolites by RNAi depends:$((EMT+4)),$((RNA+8)) +experiment
#6
task add project:'Environment of WBR'.'Metabolites' Alter metabolites by injecting proteins depends:$((EMT+4)),$((INJ+7)) +experiment
#7
task add project:'Environment of WBR'.'Metabolites' Identify the necessary metabolites during WBR depends:$((EMT+5)),$((EMT+6)) +analysis
#8
task add project:'Environment of WBR'.'Metabolites' Write a manuscript on metabolites during WBR depends:$((EMT+7)) +create +manuscript
COUNTER=$((COUNTER+8))


#========================================
#= 1.4 Culture of B. leachii
#========================================

#----------------------------------------
#- 1.4.1 Setting up the aquarium
#----------------------------------------
AQU=$COUNTER
#1
task add project:'Culture of B_leachii'.'Aquarium' Design the aquarium +contact
#2
task add project:'Culture of B_leachii'.'Aquarium' List the required equipment depends:$((AQU+1)) +inventory
#3
task add project:'Culture of B_leachii'.'Aquarium' Get the all the parts of the aquarium depends:$((AQU+2)) +purchase
#4
task add project:'Culture of B_leachii'.'Aquarium' Assemble the aquarium depends:$((AQU+3)) +experiment
#5
task add project:'Culture of B_leachii'.'Aquarium' Create a water-tight area around the aquarium depends:$((AQU+3)) +experiment
#6
task add project:'Culture of B_leachii'.'Aquarium' Test all the functionalities of the aquarium in freshwater depends:$((AQU+4)) +experiment
#7
task add project:'Culture of B_leachii'.'Aquarium' Clean the aquarium depends:$((AQU+6)) +experiment
#8
task add project:'Culture of B_leachii'.'Aquarium' Start the seawater aquarium depends:$((AQU+7)) +experiment
#9 in addition depends:BCS+1
task add project:'Culture of B_leachii'.'Aquarium' Introduce a Padovian refugium depends:$((AQU+8)) +experiment
#10
task add project:'Culture of B_leachii'.'Aquarium' Monitor the quality of the water depends:$((AQU+9)) +measurement
#11
task add project:'Culture of B_leachii'.'Aquarium' Write a User Manual for the aquarium depends:$((AQU+10)) +create +protocol
COUNTER=$((COUNTER+11))

#----------------------------------------
#- 1.4.2 Growing food 
#----------------------------------------
FOD=$COUNTER
#1
task add project:'Culture of B_leachii'.'Growing food' Find protocols on growing food for colonial ascidians +protocols
#2
task add project:'Culture of B_leachii'.'Growing food' List the required reagents depends:$((FOD+1)) +inventory
#3
task add project:'Culture of B_leachii'.'Growing food' List the required equipment depends:$((FOD+1)) +inventory
#4
task add project:'Culture of B_leachii'.'Growing food' Get the required material depends:$((FOD+2)),$((FOD+3)) +purchase
#5 in addition depends:FED+3
task add project:'Culture of B_leachii'.'Growing food' Get candidate live strains of food depends:$((FOD+4)) +purchase
#6
task add project:'Culture of B_leachii'.'Growing food' Establish stocks for each strain depends:$((FOD+5)) +experiment
#7
task add project:'Culture of B_leachii'.'Growing food' Test growing food in the reactors depends:$((FOD+6)) +training
#8
task add project:'Culture of B_leachii'.'Growing food' Assess the temperature inside each reactor in relation with illumination depends:$((FOD+7)) +measurement
#9
task add project:'Culture of B_leachii'.'Growing food' Assess the growth curve of each strain depends:$((FOD+7)) +measurement
#10
task add project:'Culture of B_leachii'.'Growing food' Assess the growth dynamics of mixed cultures depends:$((FOD+7)) +measurement
#11
task add project:'Culture of B_leachii'.'Growing food' Determine the required inoculation volume for growing food depends:$((FOD+8)),$((FOD+9)),$((FOD+10)) +analysis
#12
task add project:'Culture of B_leachii'.'Growing food' Master growing food depends:$((FOD+11)) +skill
#13
task add project:'Culture of B_leachii'.'Growing food' Write our own protocol for food culture depends:$((FOD+12)) +create +protocol
COUNTER=$((COUNTER+13))

#----------------------------------------
#- 1.4.3 Establishing a stock of colonies
#----------------------------------------
BCS=$COUNTER
#1
task add project:'Culture of B_leachii'.'Colony stock' Plan a visit to Padova +contact
task $((AQU+9)) modify depends:$((BCS+1))
#2
task add project:'Culture of B_leachii'.'Colony stock' Bring colonies back from Padova depends:$((BCS+1)) +experiment
#3
task add project:'Culture of B_leachii'.'Colony stock' Assess the genus of the collected species by genotyping depends:$((BCS+2)),$((PCR+5)) +analysis
#4
task add project:'Culture of B_leachii'.'Colony stock' Transfer colonies onto a glass substrate depends:$((BCS+2)),$((TRS+7)) +experiment
#5 in addition depends:STS+4
task add project:'Culture of B_leachii'.'Colony stock' Quarantine the colonies to prevent contamination from other organisms depends:$((BCS+4)) +experiment
#6 in addition depends:FED+10,LTS+6
task add project:'Culture of B_leachii'.'Colony stock' Culture these colonies on the long-term depends:$((BCS+3)),$((BCS+5)),$((AQU+11)) +skill
task $((CCH+8)) modify depends:$((BCS+6))
COUNTER=$((COUNTER+6))

#----------------------------------------
#- 1.4.4 Environmental parameters
#----------------------------------------
EVP=$COUNTER
#1
task add project:'Culture of B_leachii'.'Colony environment' Find protocols on culturing colonial ascidians +protocol
#2
task add project:'Culture of B_leachii'.'Colony environment' Gather publications on the environmental parameters of wild colonial ascidians +inventory
#3 in addition depends:FED+3
task add project:'Culture of B_leachii'.'Colony environment' 'Determine candidate parameters (pH, salinity, temp)' depends:$((EVP+1)),$((EVP+2)) +analysis
#4
task add project:'Culture of B_leachii'.'Colony environment' Subclone stock colonies into each tank depends:$((BCS+4)) +experiment
#5
task add project:'Culture of B_leachii'.'Colony environment' Monitor colony growth in each tank depends:$((EVP+3)),$((EVP+4)),$((GRW+5)) +imaging
#6
task add project:'Culture of B_leachii'.'Colony environment' Quantify the growth rate for each set of parameters depends:$((EVP+5)) +measurement
#7
task add project:'Culture of B_leachii'.'Colony environment' Determine new environmental parameters depends:$((EVP+6)) +analysis
#8
task add project:'Culture of B_leachii'.'Colony environment' Repeat previous step depends:$((EVP+7)) +experiment
#9
task add project:'Culture of B_leachii'.'Colony environment' Settle for the best parameters depends:$((EVP+8)) +analysis
#10
task add project:'Culture of B_leachii'.'Colony environment' Write our own optimized protocol for culturing colonies depends:$((EVP+9)) +create +protocol
COUNTER=$((COUNTER+10))

#----------------------------------------
#- 1.4.5 Feeding colonial ascidians
#----------------------------------------
FED=$COUNTER
#1
task add project:'Culture of B_leachii'.'Colony feeding' Find protocols on feeding colonial ascidians +protocol
#2
task add project:'Culture of B_leachii'.'Colony feeding' Gather publications on the diet of wild colonial ascidians +inventory
#3
task add project:'Culture of B_leachii'.'Colony feeding' Determine candidate feeding diets depends:$((FED+1)),$((FED+2)) +analysis
task $((EVP+3)) modify depends:$((FED+3))
task $((FOD+4)) modify depends:$((FED+3))
#4
task add project:'Culture of B_leachii'.'Colony feeding' Subclone stock colonies into each tank depends:$((BCS+4)),$((EVP+9)) +experiment
#5
task add project:'Culture of B_leachii'.'Colony feeding' Monitor colony growth in each tank depends:$((FED+3)),$((FED+4)),$((GRW+5)),$((FOD+12)) +imaging
#6
task add project:'Culture of B_leachii'.'Colony feeding' Monitor colony feeding quantities depends:$((FED+5)) +imaging
#7
task add project:'Culture of B_leachii'.'Colony feeding' Quantify the growth rate of each diet depends:$((FED+6)) +measurement
#8
task add project:'Culture of B_leachii'.'Colony feeding' Determine new feeding diets depends:$((FED+7)) +analysis
#9
task add project:'Culture of B_leachii'.'Colony feeding' Repeat previous step depends:$((FED+8)) +experiment
#10
task add project:'Culture of B_leachii'.'Colony feeding' Settle for the best diet depends:$((FED+9)) +analysis
task $((BCS+6)) modify depends:$((FED+10))
#11
task add project:'Culture of B_leachii'.'Colony feeding' Write our own optimized protocol for feeding colonies depends:$((FED+10)) +create +protocol
COUNTER=$((COUNTER+11))

#----------------------------------------
#- 1.4.6 Induced sexual reproduction
#----------------------------------------
ISR=$COUNTER
#1
task add project:'Culture of B_leachii'.'Sexual reproduction' Find protocols on inducing sexual reproduction in colonial ascidians +protocol
#2
task add project:'Culture of B_leachii'.'Sexual reproduction' Gather publications on the environmental conditions during sexual reproduction in colonial ascidians +inventory
#3
task add project:'Culture of B_leachii'.'Sexual reproduction' Develop equipment for observing sexual reproduction and capturing potential larvae depends:$((ISR+1)) +create +equipment
#4
task add project:'Culture of B_leachii'.'Sexual reproduction' Modify the culturing and feeding parameters to induce sexual reproduction depends:$((ISR+1)),$((ISR+2)),$((FED+10)) +experiment
#5
task add project:'Culture of B_leachii'.'Sexual reproduction' Monitor gametogenesis by widefield microscopy depends:$((ISR+3)),$((ISR+4)),$((MCR+9)) +imaging
#6
task add project:'Culture of B_leachii'.'Sexual reproduction' Confirm gametogenesis by histological sectioning depends:$((ISR+5)),$((LBL+7)) +imaging
#7
task add project:'Culture of B_leachii'.'Sexual reproduction' Optimize the environmental parameters depends:$((ISR+6)) +experiment
#8
task add project:'Culture of B_leachii'.'Sexual reproduction' Capture and settle larvae depends:$((ISR+7)) +experiment
#9
task add project:'Culture of B_leachii'.'Sexual reproduction' Find substrates or compounds that repel larvae settling depends:$((ISR+8)) +training
#10
task add project:'Culture of B_leachii'.'Sexual reproduction' Master inducing sexual reproduction in colonial ascidians depends:$((ISR+9)) +skill
#11
task add project:'Culture of B_leachii'.'Sexual reproduction' Write our own optimized protocol for inducing sexual reproduction depends:$((ISR+10)) +create +protocol
COUNTER=$((COUNTER+11))

#----------------------------------------
#- 1.4.7 Long-term storage
#----------------------------------------
LTS=$COUNTER
#1
task add project:'Culture of B_leachii'.'Long-term storage' Find protocols for aestivation of colonial ascidians +protocol
#2
task add project:'Culture of B_leachii'.'Long-term storage' Gather publications on the aestivation of colonial ascidians +inventory
#3
task add project:'Culture of B_leachii'.'Long-term storage' Establish the required environmental parameters depends:$((LTS+1)),$((LTS+2)) +analysis
#4
task add project:'Culture of B_leachii'.'Long-term storage' Test inducing aestivation depends:$((LTS+3)),$((EVP+9)) +training
#5
task add project:'Culture of B_leachii'.'Long-term storage' Test reactivation of aestivating colonies depends:$((LTS+4)) +training
#6
task add project:'Culture of B_leachii'.'Long-term storage' Master long-term storage of colonial ascidians depends:$((LTS+5)) +skill
task $((BCS+6)) modify depends:$((LTS+6))
#7
task add project:'Culture of B_leachii'.'Long-term storage' Write our own optimized protocol for aestivation depends:$((LTS+6)) +create +protocol
COUNTER=$((COUNTER+7))

#----------------------------------------
#- 1.4.8 Short-term storage
#----------------------------------------
STS=$COUNTER
#1
task add project:'Culture of B_leachii'.'Short-term storage' Design a small setup similar to the aquarium but independent for quarantine or subcloning +create +equipment
#2
task add project:'Culture of B_leachii'.'Short-term storage' List the required equipment depends:$((STS+1)) +inventory
#3
task add project:'Culture of B_leachii'.'Short-term storage' Get the required equipment depends:$((STS+2)) +purchase
#4
task add project:'Culture of B_leachii'.'Short-term storage' Build the short-term setup depends:$((STS+3)) +equipment
task $((BCS+5)) modify depends:$((STS+4))
#5
task add project:'Culture of B_leachii'.'Short-term storage' Monitor the growth rate depends:$((STS+4)),$((GRW+5)) +imaging
#6
task add project:'Culture of B_leachii'.'Short-term storage' Assess the difference with growth in the aquarium depends:$((STS+5)),$((EVP+6)) +analysis
#7
task add project:'Culture of B_leachii'.'Short-term storage' Write our own protocol for short-term culture depends:$((STS+6)) +create +protocol
COUNTER=$((COUNTER+7))


########################################
# 2. Lluis PhD thesis
########################################

#----------------------------------------
#- 2.1 Administrative part
#----------------------------------------
THS=$COUNTER
#1 in addition depends:SCI+4
task add project:'PhD'.'Thesis' Choose a title for the thesis +analysis
#2 in addition depends:SCI+6
task add project:'PhD'.'Thesis' Assemble a thesis committee +contact
#3
task add project:'PhD'.'Thesis' 'Get enough credits (at least 2 per year)' +training
#4
task add project:'PhD'.'Thesis' 'Get 2 credits for soft skills (throught the PhD)' +training
#5
task add project:'PhD'.'Thesis' 'Attend at least 3 workshops or conferences (throught the PhD)' +training
#6
task add project:'PhD'.'Thesis' Talk to Laurent Falquet about StarOmics for insights in the program +contact
COUNTER=$((COUNTER+6))

#----------------------------------------
#- 2.2 Courses to attend
#----------------------------------------
CRS=$COUNTER
#1
task add project:'PhD'.'Courses' Attend Data Management Planing by the SIB, Lausanne start:2018-03-15 end:2018-03-15 +training
#2
task add project:'PhD'.'Courses' Validate the DMP course by Adeline depends:$((CRS+1)) +contact
#3
task add project:'PhD'.'Courses' Attend Development of Marine Organisms by the CNRS, Villefranche start:2018-03-20 end:2018-03-31 +training
#4
task add project:'PhD'.'Courses' Validate the DOMO course by Adeline depends:$((CRS+3)) +contact
COUNTER=$((COUNTER+4))

#----------------------------------------
#- 2.3 Techniques to learn
#----------------------------------------
TCH=$COUNTER
#1
task add project:'PhD'.'Techniques' Learn cryoinjury using Zebrafish +training
#2
task add project:'PhD'.'Techniques' Learn tissue fixation using Zebrafish depends:$((TCH+1)) +training
#3
task add project:'PhD'.'Techniques' Learn tissue mounting using Zebrafish depends:$((TCH+2)) +training
#4
task add project:'PhD'.'Techniques' Learn tissue sectioning on the cryotome with Verena using Zebrafish depends:$((TCH+3)) +training
#5
task add project:'PhD'.'Techniques' Learn vascular tissue ablation using Botryllus schlosseri +training
#6
task add project:'PhD'.'Techniques' Get trained for spinning disk microscopy +training +imaging 
#7
task add project:'PhD'.'Techniques' Get trained for confocal microscopy +training +imaging 
#8
task add project:'PhD'.'Techniques' Get trained for epifluorescence microscopy +training +imaging 
#9
task add project:'PhD'.'Techniques' Get trained on marine organisms during the DOMO course depends:$((CRS+3)) +training
#10
task add project:'PhD'.'Techniques' Get trained for autoclaving +training
COUNTER=$((COUNTER+10))

#----------------------------------------
#- 2.4 Science part
#----------------------------------------
SCI=$COUNTER
#1
task add project:'PhD'.'Science' Study the context of the vascular environment of WBR +inventory
#2
task add project:'PhD'.'Science' Study the context of the cellular origin of WBR +inventory
#3
task add project:'PhD'.'Science' Study the context of the atlas of WBR +inventory
#4
task add project:'PhD'.'Science' Define more precisely the topic of the thesis depends:$((SCI+1)),$((SCI+2)),$((SCI+3)) +analysis
task $((THS+1)) modify depends:$((SCI+4))
#5
task add project:'PhD'.'Science' Establish a tentative schedule for the thesis depends:$((SCI+4)) +analysis
#6
task add project:'PhD'.'Science' Contact Jurge regarding the proteomics part and the thesis depends:$((SCI+5)) +contact
task $((THS+2)) modify depends:$((SCI+6))
#7
task add project:'PhD'.'Science' Determine intermediate goals to study WBR depends:$((SCI+5)) +create +inventory
COUNTER=$((COUNTER+7))

########################################
# 3. Laboratory equipment
########################################

#========================================
#= 3.1 Coffee break
#========================================
COF=$COUNTER
#1
task add project:'Laboratory equipment'.'Coffee break' Get a mini-fridge for storing our food and cream +purchase
#2
task add project:'Laboratory equipment'.'Coffee break' Get a portable radio station +purchase
COUNTER=$((COUNTER+2))

#========================================
#= 3.2 Bench space
#========================================
BEN=$COUNTER
#1
task add project:'Laboratory equipment'.'Bench space' Get a shaking platform +purchase
#2
task add project:'Laboratory equipment'.'Bench space' Get a portable tank for liquid nitrogen +purchase
#3
task add project:'Laboratory equipment'.'Bench space' Get a microwave +purchase
#4
task add project:'Laboratory equipment'.'Bench space' Get a table-top centrifuge +purchase
#5
task add project:'Laboratory equipment'.'Bench space' Get a table-top shaking platform +purchase
#6
task add project:'Laboratory equipment'.'Bench space' Get a labeling machine +purchase
#7
task add project:'Laboratory equipment'.'Bench space' Get sodium percarbonate for cleaning +purchase
COUNTER=$((COUNTER+7))

#========================================
#= 3.3 Storage
#========================================
STO=$COUNTER
#1
task add project:'Laboratory equipment'.'Storage space' Organize the space at 4C +analysis
#2
task add project:'Laboratory equipment'.'Storage space' Organize the space at -20C +analysis
#3
task add project:'Laboratory equipment'.'Storage space' Organize the space at -80C from Didier +analysis +contact
#4
task add project:'Laboratory equipment'.'Storage space' Find hooks for the bench +inventory
#5
task add project:'Laboratory equipment'.'Storage space' Assemble the control panel for the aquarium +create +equipment
#6
task add project:'Laboratory equipment'.'Storage space' Organize the space in the lab depends:$((STO+4)),$((STO+5)) +analysis
COUNTER=$((COUNTER+6))

#========================================
#= 3.4 Computers
#========================================
CPU=$COUNTER
#1
task add project:'Laboratory equipment'.'Computers' Get a server for running our sharing software +equipment
#2
task add project:'Laboratory equipment'.'Computers' Get a server for sharing scientific articles +equipment
#3
task add project:'Laboratory equipment'.'Computers' Get a server for storing our data +equipment
#4
task add project:'Laboratory equipment'.'Computers' Get a number cruncher for analyzing the data +equipment
#5
task add project:'Laboratory equipment'.'Computers' Define the structure of the data on all computers +equipment
#6
task add project:'Laboratory equipment'.'Computers' Setup proper backup solutions depends:$((CPU+1))-$((CPU+3)) +equipment
#7
task add project:'Laboratory equipment'.'Computers' Get a Raspberry PI for scientific presentations +equipment
#8
task add project:'Laboratory equipment'.'Computers' Adapt the Raspberry PI for imaging in the stereoscope depends:$((CPU+7)) +equipment
#9
task add project:'Laboratory equipment'.'Computers' Get the Apex on the network +contact
COUNTER=$((COUNTER+9))


########################################
# 4. Prospective experiments
########################################

NEXT=$COUNTER
#----------------------------------------
#- 4.1 In vitro fertilization
#----------------------------------------
#1
task add project:'Prospective experiments'.'In vitro fertilization' Collect sperm and embryos in gravid colonies depends:$((ISR+9)),$((MSG+6)) +experiment
#2
task add project:'Prospective experiments'.'In vitro fertilization' Test in vitro fertilization in colonial ascidians depends:$((NEXT+1)) +training +experiment

#----------------------------------------
#- 4.2 Cryogenisation
#----------------------------------------
#3
task add project:'Prospective experiments'.'Cryogenisation' Test cryogenising colonial ascidians gametes depends:$((NEXT+1)) +experiment +training

#----------------------------------------
#- 4.3 Transgenics
#----------------------------------------
#4
task add project:'Prospective experiments'.'Transgenics' Test transgenics in colonial ascidians embryos depends:$((NEXT+1)) +experiment +training

#----------------------------------------
#- 4.4 Functional characterization of WBR
#----------------------------------------
#5
task add project:'Prospective experiments'.'Functional characterization' Characterize functionally the regeneration niche using RNAi and growth factor injections depends:$((INJ+7)),$((RNA+8)),$((VCT+5)) +experiment
#6
task add project:'Prospective experiments'.'Functional characterization' Characterize functionally the haemocytes using RNAi and growth factor injections depends:$((EHA+10)),$((INJ+7)),$((RNA+8)),$((VCT+5)) +experiment
#7
task add project:'Prospective experiments'.'Functional characterization' Characterize the functional role of the vascular system during WBR depends:$((EHF+9)),$((EVS+8)),$((ETU+7)),$((EMT+7)),$((VCT+5)) +experiment

#----------------------------------------
#- 4.5 Atlas of blastogenesis
#----------------------------------------
#8
task add project:'Prospective experiments'.'Atlas of blastogenesis' Create an atlas of blastogenesis depends:$((VCT+5)) +experiment

#----------------------------------------
#- 4.6 Atlas of embryogenesis
#----------------------------------------
#9
task add project:'Prospective experiments'.'Atlas of embryogenesis' Create an atlas of embryogenesis depends:$((NEXT+1)),$((VCT+5)) +experiment

#----------------------------------------
#- 4.7 Germ line regeneration
#----------------------------------------
#10
task add project:'Prospective experiments'.'Germ line regeneration' Monitor regenerated zooids to identify how and when the germ line is restored depends:$((IND+5)) +experiment
COUNTER=$((COUNTER+10))
echo $COUNTER
