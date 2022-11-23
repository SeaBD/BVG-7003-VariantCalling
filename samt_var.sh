#!/bin/bash


DATA=~/week9/sabre_result/bamlist
REF=/mnt/c/Users/seabd4/Documents/Quebec/ULAVAL/autumn2022/Analysis_Informations_genomic/W-9/W-9/W-9/refgenome/Gmax_275_v2.0.fa
OUT=variantcalling
CPU=4


exec &> samt_var.log

bcftools mpileup -g 5 -f $REF -b $DATA > variants.bcf

	if [ $? -ne 0 ]
                        then
                                printf "There is a problem at the samtools_mpileup step"
                                exit 1
                fi


bcftools call -mv variants.bcf > variants.vcf

	if [ $? -ne 0 ]
                        then
                                printf "There is a problem at the bcf2vcf step"
                                exit 1
                fi
