# FlashWeave ETL

This repository contains code to extract, transform, and load the NCOG 16S, 18Sv4, 18Sv9, and metadata to get it ready for [FlashWeave co-occurrence network](https://github.com/meringlab/FlashWeave.jl) building. You can run through the steps to run the ETL in the notebook **01_FlashWeave_ETL.ipynb**. Once these steps are run, you can either run **run_flashweave_v4.sh** to create the v4 co-occurrence network, or **run_flashweave_v9.sh** to create the v9 co-occurrence network.

## Data

The data can be found on the TSCC, located at `/tscc/projects/ps-allenlab/projdata/masorens/final_data`. Move this data into the data/input folder.

## Prerequisites:

- Python version 3.10.9 (may work with higher versions, but developed and tested with 3.10.9)
- Julia version 1.6+ (https://julialang.org/downloads/) (tested with 1.9.3)
- FlashWeave (see instructions on installing at [FlashWeave](https://github.com/meringlab/FlashWeave.jl))
- Python requirements: install with `pip install -r requirements.txt`
- R requirements:
    - circlize
    - pals
    - corrplot
    - install with: `install.packages(c('circlize', 'pals', 'corrplot'))`

## make_directories.sh

- This will generate all the data directories needed for the pipeline, but you still need to add the input data into data/input.

## 01_FlashWeave_ETL.ipynb

- This notebook has one cell to run with 18S v4 data, and one cell to run with 18S v9 data. It generates the transformed, loaded, and cleaned 16S and 18S OTU data subsetted to the samples of interest, and with lower-frequency OTUs filtered out, following the same steps as the [Chaffron paper](https://www.science.org/doi/10.1126/sciadv.abg1921): "For each sample, the upper quartile (Q3) of its nonzero abundance values was computed. An OTU was retained when its observed abundance was higher than Q3 in at least five samples."

## run_flashweave_XX.jl

- run_flashweave_v4.jl: run with `julia run_flashweave_v4.jl`
- run_flashweave_v9.jl: run with `julia run_flashweave_v9.jl`
- This will create the network and save it to the appropriate location.

## 02_Basic_Graph_Analysis.ipynb

- This notebook explores some of the basic attributes of the co-occurrence network, such as number of nodes and edges, node degrees, clustering coefficient, modularity, etc. A similar table is found in Gipsi Lima-Mendez et al.'s [Determinants of community structure in the global plankton interactome](https://www.science.org/doi/10.1126/science.1262073). Additionally, clustering and community exploration is explored in Ma, B., Wang, Y., Ye, S. et al.'s [Earth microbial co-occurrence network reveals interconnection pattern across microbiomes](https://microbiomejournal.biomedcentral.com/articles/10.1186/s40168-020-00857-2)

## 03_Edgelist_and_Circlize.ipynb

- This notebook contains code to read the flashweave network and the input data containing taxonomy information, then generates an edgelist between groups of interest (for the most part, phyla, except in the case of Dinoflagellata and Bacillariophyta)

## generate_circos_plots.sh

- This script will iterate through all of the folders created by the **03_Edgelist_and_Circlize.ipynb** notebook and generate circos plots for each group that has a folder and associated circlize edgelist

## 04_Local_Network_Correlation.ipynb

- This notebook contains code to replicate the process to generate Fig 1.B in the Chafron paper to associate environmental parameters to local community structures.

## 05_Metavariable_Tolerance_Ranges.ipynb

- This notebook contains code to calculate the tolerance ranges of each node in the graph for each environmental variable. For example, for Depthm, the notebook will calculate each node's 25%, 50%, and 75% value of Depthm for which the node was found. So if the node was found in 4 samples, with depths of 20m, 30m, 40m, 50m, and 60m, the 25% quantile would be 30m, the 50% would be 40m, and the 75% would be 50m. Each environmental variable's tolerance ranges will be saved to a separate sheet inside **data/tolerance_ranges/OTU_metavar_tolerance_ranges.xlsx**.

## 06_Metavariable_Attack_Natural_Network_Connectivity.ipynb

- This notebook contains code to attack the network based on different environmental variable tolerance ranges. For example, for the environmental variable NCDepth, we will gradually remove nodes in order of the most sensitive (those nodes found in the lowest ranges of NCDepth, i.e., with the lowest interquartile range, 75% - 25%). Then, we will measure the [natural network connectivity](https://www.researchgate.net/publication/230944853_Natural_Connectivity_of_Complex_Networks) of the co-occurrence network, a robustness measure that captures the connectedness of the network, being more sensitive to nodes that are better-connected and less sensitive to nodes that are more sparsely connected. We will then plot the environmental variable attacks on the network together, to show how possible climate change events, and the resulting changes in nutrient concentrations, would affect the marine ecosystems off the California coast.
