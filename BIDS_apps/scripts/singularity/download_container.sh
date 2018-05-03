#!/bin/bash

#This script creates singulatiry containers for use on HPC. It needs to be run on a local machine (with Docker installed) and then transferred to HPC.

outputdir='/path/to/save/container/'

docker run --privileged -t --rm \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v ${outputdir}:/output \
    singularityware/docker2singularity \
    poldracklab/mriqc:latest \
