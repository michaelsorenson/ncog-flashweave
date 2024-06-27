using FlashWeave
DIR = "data/cleaned/"
OUTDIR = "data/graph/"
data_path = [string(DIR, "NCOG_21_16sV4_redo2_filtered_asv_count_tax.tsv"), string(DIR, "NCOG_18sV4_filtered_asv_count_tax.tsv")]
meta_data_path = string(DIR, "NCOG_V4_sample_log_DNA_stvx_meta_filtered_2014-2020_mod.tsv")
netw_results = learn_network(data_path, meta_data_path, sensitive=true, heterogeneous=false)
G = graph(netw_results)
save_network(string(OUTDIR, "NCOG_network_output_v4.gml"), netw_results)