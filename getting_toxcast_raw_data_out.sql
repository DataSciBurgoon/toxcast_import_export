select c_chemicalname, c_shortname, c_casrn_id, gene_name, assay_name, assay_format_type, assay_source_name, organism, logc, resp
from level5
JOIN level4 on level5.l4id = level4.l4id
JOIN agg_level4 on agg_level4.l4id = level4.l4id
JOIN level3 on agg_level4.l3id = level3.l3id
JOIN sample on sample.sa_sample_id = level4.spid
JOIN casrn on casrn.c_gsid_id = sample.sa_gsid
JOIN intended_target on intended_target.aeid = level4.aeid
JOIN gene on intended_target.target_id = gene.gene_id
JOIN assay_component_endpoint on level4.aeid = assay_component_endpoint.aeid
JOIN assay_component on assay_component_endpoint.acid = assay_component.acid
JOIN assay on assay_component.aid = assay.aid
JOIN assay_source on assay.asid = assay_source.asid