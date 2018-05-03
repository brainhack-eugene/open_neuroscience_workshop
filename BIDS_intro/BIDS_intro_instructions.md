# Instructions

## Install dcm2bids
For more detailed instructions, check out the [dcm2bids repo readme](https://github.com/cbedetti/Dcm2Bids).

In short, you can either use pip:
```
pip install dcm2bids
```
or clone the cbedetti dcm2bids repo and use the following commands:
```
git clone https://github.com/cbedetti/Dcm2Bids
cd Dcm2Bids
pip install .
```

If you have not already, install the following:  

### Dependencies

#### Python
InstallPython 2 or 3 with the future module; pip will install this module automatically
```bash
pip install python3
```
#### dcm2niix 
Install [homebrew](https://brew.sh/)
```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```
Use homebrew to install [dcm2niix](https://github.com/rordenlab/dcm2niix)
```bash
brew install dcm2niix
```
Check installation
```bash
dcm2niix -h
```

To convert our tutorial data from DICOMS to Niftis and put them into BIDS, we will follow the instructions in the README found in the open_neuroscience_workshop/brainhack_dcm2bids folder.  

Generally speaking, the steps are:  

1. Run the dcm2bids_helper on the local data
2. View the jsons created in this process and use them to create a study_config.txt file (from the template)
3. Change the config_dcm2bids_batch.py file 
4. Run dcm2bids_batch.py
5. Check the output
6. If needed, fix any errors and re-run