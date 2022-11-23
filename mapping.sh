#!/bin/bash
DATA=~/week9/sabre_result/
REF=/mnt/c/Users/seabd4/Documents/Quebec/ULAVAL/autumn2022/Analysis_Informations_genomic/W-9/W-9/W-9/refgenome/Gmax_275_v2.0.fa
CPU=3
THR=2
BWA=~/bwa/bwa

exec &> bwa.log
cd $DATA
		parallel -j $CPU $BWA mem -t $THR $REF {}.fastq ">" {}.sam ::: $(ls -1 *.fastq | sed 's/.fastq//')
		if [ $? -ne 0 ]
			then 
				printf There is a problem in the alignment step
				exit 1
		fi
