# Flashweave ETL

This repository contains code to extract, transforms, and load the NCOG 16S, 18Sv4, 18Sv9, and metadata to get it ready for [flasheave co-occurrence network](https://github.com/meringlab/FlashWeave.jl) building. You can run through the steps to run the ETL in the notebook **FlashWeave ETL.ipynb**. Once these steps are run, you can either run **run_flashweave_v4.sh** to create the v4 co-occurrence network, or **run_flashweave_v9.sh** to create the v9 co-occurrence network.

## Data

The data can be found on the TSCC, located at `/tscc/projects/ps-allenlab/projdata/masorens/final_data`. Move this data into the data/input folder.

## Prerequisites:

- Python version 3.10.9 (may work with higher versions, but developed and tested with 3.10.9)
- Julia version 1.6+ (https://julialang.org/downloads/) (tested with 1.9.3)
- Flashweave (see instructions on installing at [FlashWeave](https://github.com/meringlab/FlashWeave.jl))
- Python requirements: install with `pip install -r requirements.txt`
- R requirements:
    - circlize
    - pals
    - corrplot
    - install with: `install.packages(c('circlize', 'pals', 'corrplot'))`

## make_directories.sh

- This will generate all the data directories needed for the pipeline, but you still need to add the input data into data/input

## 01_FlashWeave ETL.ipynb

- This notebook has one cell to run with 18S v4 data, and one cell to run with 18S v9 data. It generates the transformed, loaded, and cleaned 16S and 18S OTU data subsetted to the samples of interest, and with lower-frequency OTUs filtered out, following the same steps as the Chafron paper: "For each sample, the upper quartile (Q3) of its nonzero abundance values was computed. An OTU was retained when its observed abundance was higher than Q3 in at least five samples."

## run_flashweave_XX.jl

- run_flashweave_v4.jl: run with `julia run_flashweave_v4.jl`
- run_flashweave_v9.jl: run with `julia run_flashweave_v9.jl`
- This will create the network, and save it into data/graph

## 02_Edgelist_and_Circlize.ipynb

- This notebook contains code to read the flashweave network and the input data containing taxonomy information, then generates an edgelist between groups of interest (for the most part, phyla, except in the case of Dinoflagellata and Bacillariophyta)

## 03_Local_Network_Correlation.ipynb

- This notebook contains code to replicate the process to generate Fig 1.B in the Chafron paper to associate environmental parameters to local community structures.