setwd("C:/Users/rproject/Desktop/22-02/22-02/프로그램 호환")
getwd()

library(tidyr)
library(dplyr)
library(stringr)

all <- read.csv("data/전국관광지정보표준데이터.csv", header = T, fileEncoding = "euc-kr")
all %>% head()

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

Gyeonggi$제공기관명 %>% unique()

Gyeonggi_1 <- all_1 %>% filter(str_detect(string = 소재지지번주소, pattern = "동두천시"))
write.csv(Gyeonggi_1, file = "동두천시.csv", row.names = F)

Gyeonggi_2 <- all_1 %>% filter(str_detect(string = 소재지지번주소, pattern = "군포시"))
write.csv(Gyeonggi_2, file = "군포시.csv", row.names = F)

Gyeonggi_3 <- all_1 %>% filter(str_detect(string = 소재지지번주소, pattern = "광명시"))
write.csv(Gyeonggi_3, file = "광명시.csv", row.names = F)

Gyeonggi_4 <- all_1 %>% filter(str_detect(string = 소재지지번주소, pattern = "과천시"))
write.csv(Gyeonggi_4, file = "과천시.csv", row.names = F)

Gyeonggi_5 <- all_1 %>% filter(str_detect(string = 소재지지번주소, pattern = "구리시"))
write.csv(Gyeonggi_5, file = "구리시.csv", row.names = F)

Gyeonggi_6 <- all_1 %>% filter(str_detect(string = 소재지지번주소, pattern = "하남시"))
write.csv(Gyeonggi_6, file = "하남시.csv", row.names = F)

Gyeonggi_7 <- all_1 %>% filter(str_detect(string = 소재지지번주소, pattern = "평택시"))
write.csv(Gyeonggi_7, file = "평택시.csv", row.names = F)

Gyeonggi_8 <- all_1 %>% filter(str_detect(string = 소재지지번주소, pattern = "포천시"))
write.csv(Gyeonggi_8, file = "포천시.csv", row.names = F)

Gyeonggi_9 <- all_1 %>% filter(str_detect(string = 소재지지번주소, pattern = "파주시"))
write.csv(Gyeonggi_9, file = "파주시.csv", row.names = F)

Gyeonggi_10 <- all_1 %>% filter(str_detect(string = 소재지지번주소, pattern = "양주시"))
write.csv(Gyeonggi_10, file = "양주시.csv", row.names = F)

Gyeonggi_11 <- all_1 %>% filter(str_detect(string = 소재지지번주소, pattern = "남양주시"))
write.csv(Gyeonggi_11, file = "남양주시.csv", row.names = F)

Gyeonggi_12 <- all_1 %>% filter(str_detect(string = 소재지지번주소, pattern = "광주시"))
write.csv(Gyeonggi_12, file = "광주시.csv", row.names = F)

Gyeonggi_13 <- all_1 %>% filter(str_detect(string = 소재지지번주소, pattern = "김포시"))
write.csv(Gyeonggi_13, file = "김포시.csv", row.names = F)

Gyeonggi_14 <- all_1 %>% filter(str_detect(string = 소재지지번주소, pattern = "여주시"))
write.csv(Gyeonggi_14, file = "여주시.csv", row.names = F)

write.csv(Gyeonggi, file = "Gyeonggi.csv", row.names = F)

Gangwon <- all_1 %>% filter(str_detect(string = 제공기관명, pattern = "강원도"))

Gangwon$제공기관명 %>% unique()

Gangwon_1 <- all_1 %>% filter(str_detect(string = 소재지지번주소, pattern = "삼척시"))
write.csv(Gangwon_1, file = "삼척시.csv", row.names = F)

Gangwon_2 <- all_1 %>% filter(str_detect(string = 소재지지번주소, pattern = "속초시"))
write.csv(Gangwon_2, file = "속초시.csv", row.names = F)

Gangwon_3 <- all_1 %>% filter(str_detect(string = 소재지지번주소, pattern = "강릉시"))
write.csv(Gangwon_3, file = "강릉시.csv", row.names = F)

Gangwon_4 <- all_1 %>% filter(str_detect(string = 소재지지번주소, pattern = "춘천시"))
write.csv(Gangwon_4, file = "춘천시.csv", row.names = F)

Gangwon_5 <- all_1 %>% filter(str_detect(string = 소재지지번주소, pattern = "원주시"))
write.csv(Gangwon_5, file = "원주시.csv", row.names = F)

Gangwon_6 <- all_1 %>% filter(str_detect(string = 소재지지번주소, pattern = "태백시"))
write.csv(Gangwon_6, file = "태백시.csv", row.names = F)

Gangwon_7 <- all_1 %>% filter(str_detect(string = 소재지지번주소, pattern = "동해시"))
write.csv(Gangwon_7, file = "동해시.csv", row.names = F)

write.csv(Gangwon, file = "Gangwon.csv", row.names = F)

CB <- all_1 %>% filter(str_detect(string = 제공기관명, pattern = "충청북도"))

CB$제공기관명 %>% unique()

CB_1 <- all_1 %>% filter(str_detect(string = 소재지지번주소, pattern = "충주시"))
write.csv(CB, file = "충주시.csv", row.names = F)

CB_2 <- all_1 %>% filter(str_detect(string = 소재지지번주소, pattern = "제천시"))
write.csv(CB_2, file = "제천시.csv", row.names = F)

write.csv(CB, file = "CB.csv", row.names = F)

CN <- all_1 %>% filter(str_detect(string = 제공기관명, pattern = "충청남도"))

CN$제공기관명 %>% unique()

CN_1 <- all_1 %>% filter(str_detect(string = 소재지지번주소, pattern = "천안시"))
write.csv(CN_1, file = "data/천안시.csv", row.names = F)

CN_2 <- all_1 %>% filter(str_detect(string = 소재지지번주소, pattern = "보령시"))
write.csv(CN_2, file = "data/보령시.csv", row.names = F)

CN_3 <- all_1 %>% filter(str_detect(string = 소재지지번주소, pattern = "당진시"))
write.csv(CN_3, file = "data/당진시.csv", row.names = F)

CN_4 <- all_1 %>% filter(str_detect(string = 소재지지번주소, pattern = "계룡시"))
write.csv(CN_4, file = "data/계룡시.csv", row.names = F)

CN_5 <- all_1 %>% filter(str_detect(string = 소재지지번주소, pattern = "서산시"))
write.csv(CN_5, file = "data/서산시.csv", row.names = F)

CN_6 <- all_1 %>% filter(str_detect(string = 소재지지번주소, pattern = "아산시"))
write.csv(CN_6, file = "data/아산시.csv", row.names = F)

CN_7 <- all_1 %>% filter(str_detect(string = 소재지지번주소, pattern = "공주시"))
write.csv(CN_7, file = "data/공주시.csv", row.names = F)

write.csv(CN, file = "CN.csv", row.names = F)

JB <- all_1 %>% filter(str_detect(string = 제공기관명, pattern = "전라북도"))

JB$제공기관명 %>% unique()

JB_1 <- all_1 %>% filter(str_detect(string = 소재지지번주소, pattern = "익산시"))
write.csv(JB_1, file = "data/익산시.csv", row.names = F)

JB_2 <- all_1 %>% filter(str_detect(string = 소재지지번주소, pattern = "군산시"))
write.csv(JB_2, file = "data/군산시.csv", row.names = F)

JB_3 <- all_1 %>% filter(str_detect(string = 소재지지번주소, pattern = "남원시"))
write.csv(JB_3, file = "data/남원시.csv", row.names = F)

write.csv(JB, file = "JB.csv", row.names = F)

JN <- all_1 %>% filter(str_detect(string = 제공기관명, pattern = "전라남도"))

JN$제공기관명 %>% unique()

JN_1 <- all_1 %>% filter(str_detect(string = 소재지지번주소, pattern = "순천시"))
write.csv(JN_1, file = "data/순천시.csv", row.names = F)

JN_2 <- all_1 %>% filter(str_detect(string = 소재지지번주소, pattern = "목포시"))
write.csv(JN_2, file = "data/목포시.csv", row.names = F)

JN_3 <- all_1 %>% filter(str_detect(string = 소재지지번주소, pattern = "광양시"))
write.csv(JN_3, file = "data/광양시.csv", row.names = F)

JN_4 <- all_1 %>% filter(str_detect(string = 소재지지번주소, pattern = "여수시"))
write.csv(JN_4, file = "data/여수시.csv", row.names = F)

JN_5 <- all_1 %>% filter(str_detect(string = 소재지지번주소, pattern = "나주시"))
write.csv(JN_5, file = "data/나주시.csv", row.names = F)

write.csv(JN, file = "JN.csv", row.names = F)
 
KB <- all_1 %>% filter(str_detect(string = 제공기관명, pattern = "경상북도"))

KB$제공기관명 %>% unique()

KB_1 <- all_1 %>% filter(str_detect(string = 소재지지번주소, pattern = "경주시"))
write.csv(KB_1, file = "data/경주시.csv", row.names = F)

KB_2 <- all_1 %>% filter(str_detect(string = 소재지지번주소, pattern = "영주시"))
write.csv(KB_2, file = "data/영주시.csv", row.names = F)

KB_3 <- all_1 %>% filter(str_detect(string = 소재지지번주소, pattern = "경산시"))
write.csv(KB_3, file = "data/경산시.csv", row.names = F)

KB_4 <- all_1 %>% filter(str_detect(string = 소재지지번주소, pattern = "상주시"))
write.csv(KB_4, file = "data/상주시.csv", row.names = F)

KB_5 <- all_1 %>% filter(str_detect(string = 소재지지번주소, pattern = "영천시"))
write.csv(KB_5, file = "data/영천시.csv", row.names = F)

KB_6 <- all_1 %>% filter(str_detect(string = 소재지지번주소, pattern = "포항시"))
write.csv(KB_6, file = "data/포항시.csv", row.names = F)

KB_7 <- all_1 %>% filter(str_detect(string = 소재지지번주소, pattern = "안동시"))
write.csv(KB_7, file = "data/안동시.csv", row.names = F)

KB_8 <- all_1 %>% filter(str_detect(string = 소재지지번주소, pattern = "문경시"))
write.csv(KB_8, file = "data/문경시.csv", row.names = F)


write.csv(KB, file = "KB.csv", row.names = F)

KN <- all_1 %>% filter(str_detect(string = 제공기관명, pattern = "경상남도"))

KN$제공기관명 %>% unique()

KN_1 <- all_1 %>% filter(str_detect(string = 소재지지번주소, pattern = "밀양시"))
write.csv(KN_1, file = "data/밀양시.csv", row.names = F)

KN_2 <- all_1 %>% filter(str_detect(string = 소재지지번주소, pattern = "창원시"))
write.csv(KN_2, file = "data/창원시.csv", row.names = F)

KN_3 <- all_1 %>% filter(str_detect(string = 소재지지번주소, pattern = "김해시"))
write.csv(KN_3, file = "data/김해시.csv", row.names = F)

KN_4 <- all_1 %>% filter(str_detect(string = 소재지지번주소, pattern = "사천시"))
write.csv(KN_4, file = "data/사천시.csv", row.names = F)

KN_5 <- all_1 %>% filter(str_detect(string = 소재지지번주소, pattern = "통영시"))
write.csv(KN_5, file = "data/통영시.csv", row.names = F)

KN_6 <- all_1 %>% filter(str_detect(string = 소재지지번주소, pattern = "진주시"))
write.csv(KN_6, file = "data/진주시.csv", row.names = F)

KN_7 <- all_1 %>% filter(str_detect(string = 소재지지번주소, pattern = "양산시"))
write.csv(KN_7, file = "data/양산시.csv", row.names = F)

KN_8 <- all_1 %>% filter(str_detect(string = 소재지지번주소, pattern = "거제시"))
write.csv(KN_8, file = "data/거제시.csv", row.names = F)


write.csv(KN, file = "KN.csv", row.names = F)

Jeju <- all_1 %>% filter(str_detect(string = 제공기관명, pattern = "제주특별자치도"))

Jeju$제공기관명 %>% unique()

Jeju_1 <- all_1 %>% filter(str_detect(string = 소재지지번주소, pattern = "서귀포시"))
write.csv(Jeju_1, file = "data/서귀포시.csv", row.names = F)

Jeju_2 <- all_1 %>% filter(str_detect(string = 소재지지번주소, pattern = "제주시"))
write.csv(Jeju_2, file = "data/제주시.csv", row.names = F)

write.csv(Jeju, file = "jeju.csv", row.names = F)




#CN$소재지도로명주소[is.na(CN$소재지도로명주소)] <- CN$소재지지번주소
#all_1$지역구분 <- all_1 %>% 


Jeju_1 %>% colnames()




