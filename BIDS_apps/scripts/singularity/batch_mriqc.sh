#!/bin/bash
#
# This batch file calls on your subject list (which contains both ID and wave number: SID000,wave1). 
# And runs the job_mriqc.sh file for each subject. 
# It saves the ouput and error files in specified directories.
#
# Set your directories

container=/path/to/save/container/poldracklab_mriqc_latest-2017-10-19-8992ca9444b6.img
study_dir=/path/to/study/folder/ #set path to directory within which study folder lives
study="study_name" 

# Set subject list
SUBJLIST=`cat subject_list.txt`

# Loop through subjects and run job_mriqc
for SUBJ in $SUBJLIST; do

SUBID=`echo $SUBJ|awk '{print $1}' FS=","`
SESSID=`echo $SUBJ|awk '{print $2}' FS=","`
  
sbatch --export subid=${SUBID},sessid=${SESSID},study_dir=${study_dir},study=${study},container=${container} --job-name mriqc --partition=long -n16 --mem=75G --time=20:00:00 -o "${study_dir}"/"${study}"/scripts/singularity/output/"${SUBID}"_"${SESSID}"_mriqc_output.txt -e "${study_dir}"/"${study}"/scripts/singularity/output/"${SUBID}"_"${SESSID}"_mriqc_error.txt job_mriqc.sh
	
done
