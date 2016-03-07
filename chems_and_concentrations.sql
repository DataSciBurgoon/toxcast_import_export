select distinct(c_chemicalname), c_shortname, c_casrn_id, logc
from level5
JOIN level4 on level5.l4id = level4.l4id
JOIN agg_level4 on agg_level4.l4id = level4.l4id
JOIN level3 on agg_level4.l3id = level3.l3id
JOIN sample on sample.sa_sample_id = level4.spid
JOIN casrn on casrn.c_gsid_id = sample.sa_gsid;