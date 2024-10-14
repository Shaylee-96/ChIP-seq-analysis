#!/bin/bash

#Install phantompeakqualtools using anaconda
  #conda install bioconda::phantompeakqualtools

for i in *.bam
do
  run_spp.R -c=$i -savp -p=12 -odir=phantompeakqualtools_output -out=$i
done
