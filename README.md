# BVG-7003-VariantCalling
This project is a classroom project for the “BVG-7003: Analysis of genomic information: from genome to phenome” course, for variant calling.
Windows Subsystem for Linux (WSL2) was installed Linux distribution Ubuntu 20.04 on a Windows 11 system. Linux command line text editor, Nano version 4.8, was used to write and edit the bash scripts.

The required packages before running the scripts are:
Sabre: A barcode demultiplexing and trimming tool for fastq files. It will demultiplex barcoded reads, using the provided barcodes, into separate files and separates the read into its appropriate barcode file. 
Cutadapt: Clear the data by finding and removing adapter sequences, primers, poly-A tails, and other types of unwanted sequence from sequencing reads.
BWA: It maps the read sequences against a reference genome.
BCFTools, Samtools and htslib: are set of utilities that manipulate variant calls in the Variant Call Format (VCF) and its binary counterpart BCF.


Description of the data used as input files for the scripts:
* refgenome folder contains the reference genome for soybean (Glycine max)
* GBS_data folder contains two files. One with .fq file which is the reads sequences and the .txt file which contains the barcodes.
* Bash scripts that needs to be run in the following order to perform variant calling:
Sabre.sh: the address of the .fq file should be placed in front of the DATA, the address of the .txt file should be placed in front of the BARCODE and the address of the sabre software should be placed in front of the TOOL. It will demultiplexing the .fq file using the barcode file and generates a log file named sabre.log.

Cutad_parallel.sh: It will clean all the demultiplexed files by removing the adaptor sequence provided in front of the ADAP. It will produce .fastq files and a log file named cutadapt.log.

Mapping.sh: It will map the sequences (provided in front of the DATA) against the reference genome (provided in front of the REF) using the bwa software. It will generate sam files and a log file named bwa.log.

Sam2bam.sh: It will convert sam file to bam file format, sort and index the generated bam files and it will create a list (with the path) of all bam files. It will also generate a log file named conver.log.

Samt_var.sh: It will do the variant calling using the list of all bam files (provided in front of the DATA) and the reference genome (provided in front of the REF). First, it will generate .bcf file, then converts it to .vcf file. Also, it will generate a log file named samt_var.log.





