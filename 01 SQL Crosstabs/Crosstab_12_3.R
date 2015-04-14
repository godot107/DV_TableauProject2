require("jsonlite")
library("RCurl")
require(dplyr)

# Third requirement for number 12. Finding the highest birthweight. 
df <- data.frame(fromJSON(getURL(URLencode(gsub("\n", " ", '129.152.144.84:5001/rest/native/?query=
"select ID, RACE, BWT, nth_value(BWT, 2)
OVER (PARTITION BY RACE) max_BWT
from BABY2
order by 2,3 desc"
')),httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521:ORCL', USER='C##cs329e_wkm285', PASS='orcl_wkm285', MODE='native_mode', MODEL='model', returnDimensions = 'False', returnFor = 'JSON'), verbose = TRUE))); tbl_df(df) 