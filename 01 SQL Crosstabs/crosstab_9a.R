require("jsonlite")
library("RCurl")
require(dplyr)

# one requirement for number 9
df <- data.frame(fromJSON(getURL(URLencode(gsub("\n", " ", '129.152.144.84:5001/rest/native/?query=
"SELECT ID , RACE, BWT, rank()
OVER (PARTITION BY RACE order by BWT) WEIGHT_RANK 
FROM BABY2 order by 2,4 desc " 
')),httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521:ORCL', USER='C##cs329e_wkm285', PASS='orcl_wkm285', MODE='native_mode', MODEL='model', returnDimensions = 'False', returnFor = 'JSON'), verbose = TRUE))); head(df) 
