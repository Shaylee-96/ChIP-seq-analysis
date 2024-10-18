#!/bin/bash

#List of filenames
accession=""

#pair-end mode with padj threshold value of 0.01
for i in $accession
do
macs2 callpeak -t ChIP.bam -c control.bam -g hs --bdg --BAMPE --name ${i}_MACS2 --outdir K4_macs2_output -q 0.01
done
