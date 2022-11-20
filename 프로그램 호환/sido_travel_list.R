setwd("C:/Users/LG/Desktop/프로그램호환/project")
getwd()

all <- read.csv("전국관광지정보표준데이터.csv", header = T, fileEncoding = "euc-kr")
all %>% head()

library(tidyr)
library(dplyr)
library(stringr)

# 필요한 변수만 추출
all_1 <- all %>% select(c(관광지명:경도,관광지소개,관리기관명,제공기관코드,제공기관명))


all_cnt <- all_1 %>% group_by(제공기관명) %>% summarise(n=n())
#unique(all_1$제공기관명)


# 주소 없는 빈칸에 주소 추가
# all_1에 지역구분이라는 새로운 열 추가


# 지역별로 데이터 분류
Seoul <- all_1 %>% filter(str_detect(string = 제공기관명, pattern = "서울특별시"))
write.csv(Seoul, file = "Seoul.csv", row.names = F)
Seoul %>% colnames()

Busan <- all_1 %>% filter(str_detect(string = 제공기관명, pattern = "부산광역시"))
write.csv(Busan, file = "Busan.csv", row.names = F)

Daegu <- all_1 %>% filter(str_detect(string = 제공기관명, pattern = "대구광역시")) 
write.csv(Daegu, file = "Daegu.csv", row.names = F)

Incheon <- all_1 %>% filter(str_detect(string = 제공기관명, pattern = "인천광역시"))
write.csv(Incheon, file = "Incheon.csv", row.names = F)

Gwangju <- all_1 %>% filter(str_detect(string = 제공기관명, pattern = "광주광역시"))
write.csv(Gwangju, file = "Gwangju.csv", row.names = F)

Daejeon <- all_1 %>% filter(str_detect(string = 제공기관명, pattern = "대전광역시"))
write.csv(Daejeon, file = "Daejeon.csv", row.names = F)

Ulsan <- all_1 %>% filter(str_detect(string = 제공기관명, pattern = "울산광역시"))
write.csv(Ulsan, file = "Ulsan.csv", row.names = F)

Sejong <- all_1 %>% filter(str_detect(string = 제공기관명, pattern = "세종특별자치시"))
write.csv(Sejong, file = "Sejong.csv", row.names = F)

Gyeonggi <- all_1 %>% filter(str_detect(string = 제공기관명, pattern = "경기도"))
write.csv(Gyeonggi, file = "Gyeonggi.csv", row.names = F)

Gangwon <- all_1 %>% filter(str_detect(string = 제공기관명, pattern = "강원도"))
write.csv(Gangwon, file = "Gangwon.csv", row.names = F)

CB <- all_1 %>% filter(str_detect(string = 제공기관명, pattern = "충청북도"))
write.csv(CB, file = "CB.csv", row.names = F)

CN <- all_1 %>% filter(str_detect(string = 제공기관명, pattern = "충청남도"))
write.csv(CN, file = "CN.csv", row.names = F)

JB <- all_1 %>% filter(str_detect(string = 제공기관명, pattern = "전라북도"))
write.csv(JB, file = "JB.csv", row.names = F)

JN <- all_1 %>% filter(str_detect(string = 제공기관명, pattern = "전라남도"))
write.csv(JN, file = "JN.csv", row.names = F)

KB <- all_1 %>% filter(str_detect(string = 제공기관명, pattern = "경상북도"))
write.csv(KB, file = "KB.csv", row.names = F)

KN <- all_1 %>% filter(str_detect(string = 제공기관명, pattern = "경상남도"))
write.csv(KN, file = "KN.csv", row.names = F)

Jeju <- all_1 %>% filter(str_detect(string = 제공기관명, pattern = "제주특별자치도"))
write.csv(Jeju, file = "jeju.csv", row.names = F)




#CN$소재지도로명주소[is.na(CN$소재지도로명주소)] <- CN$소재지지번주소
#all_1$지역구분 <- all_1 %>% 







