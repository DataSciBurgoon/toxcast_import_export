select c_chemicalname, c_shortname, c_casrn_id, hitc, modl_acc, modl_acb, modl_ac10, gene_name, assay_component_endpoint_name 
from level5
JOIN level4 on level5.l4id = level4.l4id
JOIN sample on sample.sa_sample_id = level4.spid
JOIN casrn on casrn.c_gsid_id = sample.sa_gsid
JOIN intended_target on intended_target.aeid = level4.aeid
JOIN gene on intended_target.target_id = gene.gene_id
JOIN assay_component_endpoint on level4.aeid = assay_component_endpoint.aeid;