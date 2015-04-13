# one requirement for number 12 
df <- data.frame(fromJSON(getURL(URLencode(gsub("\n", " ", '129.152.144.84:5001/rest/native/?query=
"select ID, RACE, BWT, last_value(max_BWT) 
OVER (PARTITION BY ID order by BWT) max_BWT, last_value(max_BWT) 
OVER (PARTITION BY ID order by BWT) - BWT BWT_diff
from
(SELECT ID, RACE, BWT, max(BWT)
OVER (PARTITION BY RACE) max_BWT 
FROM BABY2) 
order by 2,3 desc"
')),httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521:ORCL', USER='C##cs329e_wkm285', PASS='orcl_wkm285', MODE='native_mode', MODEL='model', returnDimensions = 'False', returnFor = 'JSON'), verbose = TRUE))); tbl_df(df) 