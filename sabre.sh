#!/bin/bash
DATA=/mnt/c/Users/seabd4/Documents/Quebec/ULAVAL/autumn2022/Analysis_Informations_genomic/W-9/W-9/W-9/GBS_data/FC20150701_1.fq
BARCODE=/mnt/c/Users/seabd4/Documents/Quebec/ULAVAL/autumn2022/Analysis_Informations_genomic/W-9/W-9/W-9/GBS_data/FC20150701_1.txt
TOOL=~/sabre/sabre
exec &> sabre.log

$TOOL se -f $DATA -b $BARCODE -u unk.fastq
