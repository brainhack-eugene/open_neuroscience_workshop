#!/bin/bash
#
# This script will run mriqc. The only changes you need to make are to specify the path to your repo (repodir) and also make sure that bids_data/derivatives folder exists.

repodir='[path to repo]' # e.g.  ~/Desktop/open_neuroscience_workshop
inputdir=${repodir}/data/bids_data/
outputdir=${repodir}/data/bids_data/derivatives/ 

docker run --rm -it -v ${inputdir}:/data:ro -v ${outputdir}:/out poldracklab/mriqc:0.10.4 /data /out participant
