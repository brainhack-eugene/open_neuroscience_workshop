# Important
The scripts in this folder are adapted as a tutorial example. They will not be maintained beyond the workshop. For up to date scripts, please see the offical git repo at https://github.com/kdestasio/dcm2bids  

# Overview

DICOMS are converted into Niftis, which are renamed and put into BIDS structure using [cbedetti](https://github.com/cbedetti)'s [dcm2Bids](https://github.com/cbedetti/Dcm2Bids) package. The dcm2Bids package converts DICOM files to Nifti files using the [rordenlab](https://github.com/rordenlab)'s [dcm2niix](https://github.com/rordenlab/dcm2niix) package, then renames and relocates them as per [BIDS](http://bids.neuroimaging.io/) specifications.

**_Instructions on this page are to run the subjects serially on a local machine. For instructions to run subjects in parallel on a high performance cluster, see the official sripts at https://github.com/kdestasio/dcm2bids_**

## [Scripts](https://github.com/kdestasio/dcm2bids)

- **dcm2bids_helper.py**  
- **config_dcm2bids_helper.py** - change the variables and paths as appropriate for your study
- **dcm2bids_batch.py**
- **config_dcm2bids_batch.py**- change the variables and paths as appropriate for your study  
- **subject_list.txt** - populate this text file with a list of subjects you want to convert.  
- **study_config.json** - the study config file (instructions on how to make it for your study are [here](https://github.com/cbedetti/Dcm2Bids))  

## Using the Dcm2Bids_helper

If you need the metadata to populate the config file, use the dcm2bids helper, which is built into the dcm2bids container.

### Run the helper locally

1. Open `config_dcm2bids_helper.py` and change the `repo_path` variable for your machine
change the variables and/or paths in the `config_dcm2bids_helper.py` script for your study.  

2. In the terminal, `cd` to the directory that has your code in it.  

3. Run the `dcm2bids_helper.py` script.

    `python3 dcm2bids_helper.py`

4. Check the script output, e.g. 

```
cd /projects/sanlab/shared/REV/tmp_dcm2bids/helper

ls


>>> 001_REV001_20150406_AAHScout_20150406145550.nii.gz

>>> 02_REV001_20150406_AAHScout_20150406145550a.json

>>> . 

>>> .

>>> .

>>> 017_REV001_20150406_React2_mb3_g2_2mm_te27_20150406145550.json

>>> 017_REV001_20150406_React2_mb3_g2_2mm_te27_20150406145550.nii.gz
```

5. View the json files and use that info to edit the `study_config.json` file so it works for your study. Instructions in the readme of the [dcm2Bids](https://github.com/cbedetti/Dcm2Bids) repo.


# Steps to convert DICOMS to BIDS

1. Create the `subject_list.txt` where each row has the input: `directoryName,subjectID,waveNumber`
    * An easy way to do this is to `cd` into your DICOM directory and use the command `ls >> subject_list.txt` , which will create a text file of that name and populate it with all the directories/files in your working directory. You can then move that subject_list.txt file to the directory from which you will be running your code and add the subject ID and time-point columns.
    * The subject_list should be formatted such that each row consists of: the subject directory names (that contains the dicoms), desired subject ID, and data collection wave number. Each field is comma separated, all without spaces, e.g.:

    `sub01_20150909,REV001,wave1`

    `sub01_20150909,REV001,wave2`

    `sub02_20150909,REV001,wave1`

2. Edit the `study_config.json` file such that it works for your study.
    - See the [dcm2Bids](https://github.com/cbedetti/Dcm2Bids) repository for documentation and instructions. ← for real, you'll need to read the instructions
3. Change the variables and/or paths in `config_dcm2bids_batch.py` script for your study
    - Select whether the jobs are to be run serially on a local machine or in parallel on a HPC. For the tutorial, we will run the script locally: `run_local = True`  

4. In terminal, `cd` to the directory that has your code in it. 

5. Run the batch script. 

  `python3 dcm2bids_batch.py`. 

8. Check the niftis, output logs, and error logs.

# Manually Create Metadata Files
As per: [http://bids.neuroimaging.io/bids\_spec1.0.0-rc2.pdf](http://bids.neuroimaging.io/bids_spec1.0.0-rc2.pdf)

Place these files in the top level bids directory.

* dataset_description.json
* A JSON for each functional task with TaskName and RepetitionTime
* README (optional, but strongly recommended)
* CHANGES (optional, but strongly recommended)

# Check the BIDS Conversion
BIDS validator: [http://incf.github.io/bids-validator](http://incf.github.io/bids-validator/)