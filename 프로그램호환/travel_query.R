### Paths for Packages
.libPaths("C:/Users/rproject/AppData/Local/R/win-library/4.2")

library(dplyr)
library(RMariaDB)

# Database 접속 정보
MDB.host <- "best.hnu.kr"
MDB.id <- "lpp20"
MDB.pw <- "lpp123"
MDB.db <- "lpp20"
MDB.port <- 3306

# DB 연결
con <- dbConnect(
    RMariaDB::MariaDB(),
    host = MDB.host,
    username = MDB.id,
    password = MDB.pw,
    dbname = MDB.db,
    port = MDB.port
)

for (var in commandArgs(trailingOnly=TRUE)) {
    var.ls = strsplit(var, "=", fixed=TRUE)
    if (!is.null(var.ls[[1]][[2]])) {
        assign(var.ls[[1]][1], var.ls[[1]][2])
    } else {
        assign(var.ls[[1]][1], TRUE)
    }
}

# 기본값 서울로 지정
if(!exists("sido")){
    sido <- "서울"
}

if (sido == "전체") {
  query.str <- paste("select * from total where `지역명` LIKE '%", city, "%'", sep = "")
} else {
  query.str <- paste("select * from total where `지역명` LIKE '%", sido, "%'", sep = "")
}

rs <- dbGetQuery(con,query.str)
# rs %>% head()

### 표 저장
outfile <- "./df/travel.html"

res <- DT::datatable(rs, options=list(pageLength=3))

DT::saveWidget(res, outfile, selfcontained = F)

dbDisconnect(con)