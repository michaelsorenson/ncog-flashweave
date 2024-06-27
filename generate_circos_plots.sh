#!/bin/bash
INPUT_V4="data/circlize/FOCUSGROUP/NCOG_network_v4_circlize_edgelist_FOCUSGROUP.csv"
INPUT_V9="data/circlize/FOCUSGROUP/NCOG_network_v9_circlize_edgelist_FOCUSGROUP.csv"
OUTPUT_V4_POSITIVE="plots/circos/FOCUSGROUP/NCOG_network_v4_FOCUSGROUP_circos_positive.png"
OUTPUT_V4_NEGATIVE="plots/circos/FOCUSGROUP/NCOG_network_v4_FOCUSGROUP_circos_negative.png"
OUTPUT_V9_POSITIVE="plots/circos/FOCUSGROUP/NCOG_network_v9_FOCUSGROUP_circos_positive.png"
OUTPUT_V9_NEGATIVE="plots/circos/FOCUSGROUP/NCOG_network_v9_FOCUSGROUP_circos_negative.png"


# Bacillariophyta

mkdir -p plots/circos/Bacillariophyta
Bacillariophyta_Input_v4="${INPUT_V4//FOCUSGROUP/Bacillariophyta}"
Bacillariophyta_Input_v9="${INPUT_V9//FOCUSGROUP/Bacillariophyta}"
Bacillariophyta_Output_v4_Positive="${OUTPUT_V4_POSITIVE//FOCUSGROUP/Bacillariophyta}"
Bacillariophyta_Output_v4_Negative="${OUTPUT_V4_NEGATIVE//FOCUSGROUP/Bacillariophyta}"
Bacillariophyta_Output_v9_Positive="${OUTPUT_V9_POSITIVE//FOCUSGROUP/Bacillariophyta}"
Bacillariophyta_Output_v9_Negative="${OUTPUT_V9_NEGATIVE//FOCUSGROUP/Bacillariophyta}"

Rscript src/circlize_plot.R $Bacillariophyta_Input_v4 $Bacillariophyta_Output_v4_Positive $Bacillariophyta_Output_v4_Negative
Rscript src/circlize_plot.R $Bacillariophyta_Input_v9 $Bacillariophyta_Output_v9_Positive $Bacillariophyta_Output_v9_Negative


# Bicoecea

mkdir -p plots/circos/Bicoecea
Bicoecea_Input_v4="${INPUT_V4//FOCUSGROUP/Bicoecea}"
Bicoecea_Input_v9="${INPUT_V9//FOCUSGROUP/Bicoecea}"
Bicoecea_Output_v4_Positive="${OUTPUT_V4_POSITIVE//FOCUSGROUP/Bicoecea}"
Bicoecea_Output_v4_Negative="${OUTPUT_V4_NEGATIVE//FOCUSGROUP/Bicoecea}"
Bicoecea_Output_v9_Positive="${OUTPUT_V9_POSITIVE//FOCUSGROUP/Bicoecea}"
Bicoecea_Output_v9_Negative="${OUTPUT_V9_NEGATIVE//FOCUSGROUP/Bicoecea}"

Rscript src/circlize_plot.R $Bicoecea_Input_v4 $Bicoecea_Output_v4_Positive $Bicoecea_Output_v4_Negative
Rscript src/circlize_plot.R $Bicoecea_Input_v9 $Bicoecea_Output_v9_Positive $Bicoecea_Output_v9_Negative


# Planctoymcetota

mkdir -p plots/circos/Planctomycetota
Planctomycetota_Input_v4="${INPUT_V4//FOCUSGROUP/Planctomycetota}"
Planctomycetota_Input_v9="${INPUT_V9//FOCUSGROUP/Planctomycetota}"
Planctomycetota_Output_v4_Positive="${OUTPUT_V4_POSITIVE//FOCUSGROUP/Planctomycetota}"
Planctomycetota_Output_v4_Negative="${OUTPUT_V4_NEGATIVE//FOCUSGROUP/Planctomycetota}"
Planctomycetota_Output_v9_Positive="${OUTPUT_V9_POSITIVE//FOCUSGROUP/Planctomycetota}"
Planctomycetota_Output_v9_Negative="${OUTPUT_V9_NEGATIVE//FOCUSGROUP/Planctomycetota}"

Rscript src/circlize_plot.R $Planctomycetota_Input_v4 $Planctomycetota_Output_v4_Positive $Planctomycetota_Output_v4_Negative
Rscript src/circlize_plot.R $Planctomycetota_Input_v9 $Planctomycetota_Output_v9_Positive $Planctomycetota_Output_v9_Negative


# Verrucomicrobiota

mkdir -p plots/circos/Verrucomicrobiota
Verrucomicrobiota_Input_v4="${INPUT_V4//FOCUSGROUP/Verrucomicrobiota}"
Verrucomicrobiota_Input_v9="${INPUT_V9//FOCUSGROUP/Verrucomicrobiota}"
Verrucomicrobiota_Output_v4_Positive="${OUTPUT_V4_POSITIVE//FOCUSGROUP/Verrucomicrobiota}"
Verrucomicrobiota_Output_v4_Negative="${OUTPUT_V4_NEGATIVE//FOCUSGROUP/Verrucomicrobiota}"
Verrucomicrobiota_Output_v9_Positive="${OUTPUT_V9_POSITIVE//FOCUSGROUP/Verrucomicrobiota}"
Verrucomicrobiota_Output_v9_Negative="${OUTPUT_V9_NEGATIVE//FOCUSGROUP/Verrucomicrobiota}"

Rscript src/circlize_plot.R $Verrucomicrobiota_Input_v4 $Verrucomicrobiota_Output_v4_Positive $Verrucomicrobiota_Output_v4_Negative
Rscript src/circlize_plot.R $Verrucomicrobiota_Input_v9 $Verrucomicrobiota_Output_v9_Positive $Verrucomicrobiota_Output_v9_Negative


# Pseudo-nitzschia

mkdir -p plots/circos/Pseudo-nitzschia
Pseudo_nitzschia_Input_v4="${INPUT_V4//FOCUSGROUP/Pseudo-nitzschia}"
Pseudo_nitzschia_Input_v9="${INPUT_V9//FOCUSGROUP/Pseudo-nitzschia}"
Pseudo_nitzschia_Output_v4_Positive="${OUTPUT_V4_POSITIVE//FOCUSGROUP/Pseudo-nitzschia}"
Pseudo_nitzschia_Output_v4_Negative="${OUTPUT_V4_NEGATIVE//FOCUSGROUP/Pseudo-nitzschia}"
Pseudo_nitzschia_Output_v9_Positive="${OUTPUT_V9_POSITIVE//FOCUSGROUP/Pseudo-nitzschia}"
Pseudo_nitzschia_Output_v9_Negative="${OUTPUT_V9_NEGATIVE//FOCUSGROUP/Pseudo-nitzschia}"

Rscript src/circlize_plot.R $Pseudo_nitzschia_Input_v4 $Pseudo_nitzschia_Output_v4_Positive $Pseudo_nitzschia_Output_v4_Negative
Rscript src/circlize_plot.R $Pseudo_nitzschia_Input_v9 $Pseudo_nitzschia_Output_v9_Positive $Pseudo_nitzschia_Output_v9_Negative


# Chaetoceros

mkdir -p plots/circos/Chaetoceros
Chaetoceros_Input_v4="${INPUT_V4//FOCUSGROUP/Chaetoceros}"
Chaetoceros_Input_v9="${INPUT_V9//FOCUSGROUP/Chaetoceros}"
Chaetoceros_Output_v4_Positive="${OUTPUT_V4_POSITIVE//FOCUSGROUP/Chaetoceros}"
Chaetoceros_Output_v4_Negative="${OUTPUT_V4_NEGATIVE//FOCUSGROUP/Chaetoceros}"
Chaetoceros_Output_v9_Positive="${OUTPUT_V9_POSITIVE//FOCUSGROUP/Chaetoceros}"
Chaetoceros_Output_v9_Negative="${OUTPUT_V9_NEGATIVE//FOCUSGROUP/Chaetoceros}"

Rscript src/circlize_plot.R $Chaetoceros_Input_v4 $Chaetoceros_Output_v4_Positive $Chaetoceros_Output_v4_Negative
Rscript src/circlize_plot.R $Chaetoceros_Input_v9 $Chaetoceros_Output_v9_Positive $Chaetoceros_Output_v9_Negative