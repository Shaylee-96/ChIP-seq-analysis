#!/bin/bash

#Install phantompeakqualtools using anaconda
  #conda install bioconda::phantompeakqualtools

#conda activate the environment

#run the phantompeakqualtools for all the bam files using 12 CPUs
for i in *.bam
do
  run_spp.R -c=$i -savp -p=12 -odir=phantompeakqualtools_output -out=$i
done
