# Instructions

## Clone the cbedetti dcm2bids repo

```
git clone https://github.com/cbedetti/Dcm2Bids
cd Dcm2Bids
pip install .
```

If you have not already, install the following:  

### Dependencies

- Python 2 or 3 with the future module, pip will install it automatically
- dcm2niix : DICOM to NIfTI conversion tool. You need to install it
    - NITRC for compiled versions
    - Recent release
    - github to build from source code


To convert our tutorial data from DICOMS to Niftis and put them into BIDS, we will follow the instructions in the README found in the open_neuroscience_workshop/brainhack_dcm2bids folder.  

Generally speaking, the steps are:  

1. Run the dcm2bids_helper on the local data
2. View the jsons created in this process and use them to create a study_config.txt file (from the template)
3. Change the config_dcm2bids_batch.py file 
4. Run dcm2bids_batch.py
5. Check the output
6. If needed, fix any errors and re-run