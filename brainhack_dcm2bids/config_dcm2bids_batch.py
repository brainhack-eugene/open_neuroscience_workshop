# This script will convert all of the dicoms in the sourcedir
# for participant directories that are listed in the subject_list.txt file.
# Niftis will be renamed and put into BIDS structure using the dcm2Bids package
#
# See the dcm2Bids repo for instructions to create the config file:
# https://github.com/cbedetti/Dcm2Bids
#
# More detailed instructions for using these scripts here:
# https://github.com/kdestasio/dcm2bids
#
# In your current directory, you will need:
#       - dcm2bids_batch.py
#       - subject_list.txt
#       - study_config.json


# Configuration file for dcm2bids_batch.py
import os
from datetime import datetime

# Specify the path where the workshop repository lives
repo_path = "/Users/danicosme/Documents/code/brainhack/open_neuroscience_workshop"

# Set directories
# These variables are used in the main script and need to be defined here. They need to exist prior to running the script.
dicomdir = os.path.join(repo_path, "data", "dicoms")
codedir = os.path.join(repo_path, "brainhack_dcm2bids") # Contains subject_list.txt, config file, and dcm2bids_batch.py
configfile = os.path.join(codedir, "study_config.json")  # path to and name of config file

# These variables are also used in the main script and need to be defined here.
# If they don't exist, they will be created by the script
niidir = os.path.join(repo_path, "data", "bids_data") # where the niftis will be put
logdir = os.path.join(niidir, "logs_dcm2bids")
outputlog = os.path.join(logdir, "outputlog_dcmn2bids" + datetime.now().strftime("%Y%m%d-%H%M") + ".txt")
errorlog = os.path.join(logdir, "errorlog_dcm2bids" + datetime.now().strftime("%Y%m%d-%H%M") + ".txt")

# Source the subject list (needs to be in your current working directory)
subjectlist = "subject_list.txt"

# Run on local machine (run_local = True) or high performance cluster with slurm (run_local = False)
run_local = True