setwd("C:/Users/Maxim/Documents/Livability in smart cities/20th May")
getwd()

install.packages("readxl")
install.packages("tidyverse")
install.packages("ggplot2")
install.packages("xlsx")

library(readxl)
library(tidyverse)
library(ggplot2)
library(xlsx)
library(fmsb)




#Read index excel files

year_2017 <- read_excel("index_2017.xlsx")
year_2017_mid <- read_excel("index_2017_mid.xlsx")
year_2018 <- read_excel("index_2018.xlsx")
year_2018_mid <- read_excel("index_2018_mid.xlsx")
year_2019 <- read_excel("index_2019.xlsx")
year_2019_mid <- read_excel("index_2019_mid.xlsx")
year_2020 <- read_excel("index_2020.xlsx")
year_2020_mid <- read_excel("index_2020_mid.xlsx")
year_2021 <- read_excel("index_2021.xlsx")
year_2021_mid <- read_excel("index_2021_mid.xlsx")
year_2022 <- read_excel("index_2022.xlsx")


# #Year 2020
# 
# filter_year_2020 <- year_2020 %>% filter(
#   City %in% year_2017_mid$City , City %in% year_2017$City , City %in% year_2018_mid$City, City %in% year_2018$City , City %in% year_2019_mid$City ,
#   City %in% year_2019$City , City %in% year_2020_mid$City ,
#   City %in% year_2021$City , City %in% year_2021_mid$City , City %in% year_2022$City)
# 
# filter_year_2020 <- filter_year_2020[order(filter_year_2020$City),]
# 
# filter_year_2020 <-filter_year_2020 %>%
#   mutate(diffto2019mid = filter_year_2019_mid$Rank - filter_year_2020$Rank)
# 
# # Year 2020 Mid
# 
# filter_year_2020_mid <- year_2020_mid %>% filter(
#   City %in% year_2017$City , City %in% year_2018$City , City %in% year_2017_mid$City,
#   City %in% year_2019$City , City %in% year_2018_mid$City ,
#   City %in% year_2020$City , City %in% year_2019_mid$City ,
#   City %in% year_2021$City , City %in% year_2021_mid$City , City %in% year_2022$City)
# 
# filter_year_2020_mid <- filter_year_2020_mid[order(filter_year_2020_mid$City),]
# 
# filter_year_2020_mid <-filter_year_2020_mid %>%
#   mutate(diffto2020 = filter_year_2020$Rank - filter_year_2020_mid$Rank)
# 
# #Year 2021
# 
# filter_year_2021 <- year_2021 %>% filter(
#   City %in% year_2017_mid$City , City %in% year_2017$City , City %in% year_2018_mid$City, City %in% year_2018$City , City %in% year_2019_mid$City ,
#   City %in% year_2020$City , City %in% year_2020_mid$City ,
#   City %in% year_2019$City , City %in% year_2021_mid$City , City %in% year_2022$City)
# 
# filter_year_2021 <- filter_year_2021[order(filter_year_2021$City),]
# 
# filter_year_2021 <-filter_year_2021 %>%
#   mutate(diffto2020mid = filter_year_2020_mid$Rank - filter_year_2021$Rank)
# 
# # Year 2021 Mid
# 
# filter_year_2021_mid <- year_2021_mid %>% filter(
#   City %in% year_2017$City , City %in% year_2018$City , City %in% year_2017_mid$City,
#   City %in% year_2019$City , City %in% year_2018_mid$City ,
#   City %in% year_2020$City , City %in% year_2020_mid$City ,
#   City %in% year_2021$City , City %in% year_2019_mid$City , City %in% year_2022$City)
# 
# filter_year_2021_mid <- filter_year_2021_mid[order(filter_year_2021_mid$City),]
# 
# filter_year_2021_mid <-filter_year_2021_mid %>%
#   mutate(diffto2021 = filter_year_2021$Rank - filter_year_2021_mid$Rank)
# 
# #Year 2022
# 
# filter_year_2022 <- year_2022 %>% filter(
#   City %in% year_2017_mid$City , City %in% year_2017$City , City %in% year_2018_mid$City, City %in% year_2018$City , City %in% year_2019_mid$City ,
#   City %in% year_2020$City , City %in% year_2020_mid$City ,
#   City %in% year_2021$City , City %in% year_2021_mid$City , City %in% year_2019$City)
# 
# filter_year_2022 <- filter_year_2022[order(filter_year_2022$City),]
# 
# filter_year_2022 <-filter_year_2022 %>%
#   mutate(diffto2021mid = filter_year_2021_mid$Rank - filter_year_2022$Rank)


#Covid cases according to the John Hopkins Github
covid1July20 <- read.csv("07-01-2020.csv")
covid1Jan21 <- read.csv("01-01-2021.csv")
covid1July21 <- read.csv("07-01-2021.csv")
covid1Jan22 <- read.csv("01-01-2022.csv")


#USA Covid Cases and Livability Correlation

#Use cities from the Covid Cases of January 1st 2021(was created first) and
#subset Year 20 mid, 21 mid and 22.

covidcase21janusa <- read_excel("Filteryear2021_USA.xlsx")

filtered_usa_july20 <- year_2020_mid %>% filter(
     City %in% covidcase21janusa$City)

filtered_usa_july21 <- year_2021_mid %>% filter(
  City %in% covidcase21janusa$City)

filtered_usa_jan22 <- year_2022 %>% filter(
  City %in% covidcase21janusa$City)

# write.xlsx(filtered_usa_july20, "Filteryear2020mid_USA.xlsx")
# write.xlsx(filtered_usa_july21, "Filteryear2021mid_USA.xlsx")
# write.xlsx(filtered_usa_jan22, "Filteryear2022_USA.xlsx")

#Now add Covid numbers and 


world <- map_data("world")
qolifeovertime <- read_excel("qolifeovertimechange.xlsx")


worldmap <- ggplot() +
  geom_map(
    data = world, map = world,
    aes(long, lat, map_id = region),
    color = "black", fill = "lightgray", size = 0.1)


ggplot() +
  geom_map(
    data = world, map = world,
    aes(long, lat, map_id = region),
    color = "black", fill = "lightgray", size = 0.1) +
  geom_point(
    data = qolifeovertime,
    aes(Longitude, Latitude, color = cut(Avg_diff, c(-Inf,-0.01, 0.01, Inf))),
    alpha = 0.5) + scale_color_manual(name = "Average difference in the rank of quality of life index 2017-22",
                        values = c("(-Inf,-0.01]" = "red",
                                   "(-0.01,0.01]" = "yellow",
                                   "(0.01, Inf]" = "green"),
                        labels = c("Quality of Life Decrease", "No Change", "Quality of Life Increase"))

#Additional plots

#Show only cities that have had an increase in general


qolifeovertimepos <- qolifeovertime %>%
  filter(Avg_diff > 0)


ggplot() +
  geom_map(
    data = world, map = world,
    aes(long, lat, map_id = region),
    color = "black", fill = "lightgray", size = 0.1) +
  geom_point(
    data = qolifeovertimepos,
    aes(Longitude, Latitude,colour = qolifeovertimepos$Avg_diff),
    alpha = 0.5) + geom_text(data = qolifeovertimepos,
                                        aes(Longitude, Latitude,label=qolifeovertimepos$City), size = 2) +
  scale_color_gradientn(colours = rainbow(5))

# +
#   scale_colour_manual(values=c("#000000FF", "#000000FF"))                              

# Works
# + geom_text(data = qolifeovertime,
#             aes(Longitude, Latitude,label=qolifeovertime$City))

owidcovid <- read_excel("owid-covid-data.xlsx")

#Covid cases on 1st July 2020

asiacovid1Jul20<- owidcovid %>% filter(continent == "Asia" & date == "2020-07-01")
africacovid1Jul20<- owidcovid %>% filter(continent == "Africa" & date == "2020-07-01")
europecovid1Jul20<- owidcovid %>% filter(continent == "Europe" & date == "2020-07-01")
namericacovid1Jul20<- owidcovid %>% filter(continent == "North America" & date == "2020-07-01")
samericacovid1Jul20<- owidcovid %>% filter(continent == "South America" & date == "2020-07-01")
oceaniacovid1Jul20<- owidcovid %>% filter(continent == "Oceania" & date == "2020-07-01")

#Replace NAs with 0s

asiacovid1Jul20$total_cases[is.na(asiacovid1Jul20$total_cases)] <- 0
africacovid1Jul20$total_cases[is.na(africacovid1Jul20$total_cases)] <- 0
europecovid1Jul20$total_cases[is.na(europecovid1Jul20$total_cases)] <- 0
namericacovid1Jul20$total_cases[is.na(namericacovid1Jul20$total_cases)] <- 0
samericacovid1Jul20$total_cases[is.na(samericacovid1Jul20$total_cases)] <- 0
oceaniacovid1Jul20$total_cases[is.na(oceaniacovid1Jul20$total_cases)] <- 0

asiacovid1Jul20$total_deaths[is.na(asiacovid1Jul20$total_deaths)] <- 0
africacovid1Jul20$total_deaths[is.na(africacovid1Jul20$total_deaths)] <- 0
europecovid1Jul20$total_deaths[is.na(europecovid1Jul20$total_deaths)] <- 0
namericacovid1Jul20$total_deaths[is.na(namericacovid1Jul20$total_deaths)] <- 0
samericacovid1Jul20$total_deaths[is.na(samericacovid1Jul20$total_deaths)] <- 0
oceaniacovid1Jul20$total_deaths[is.na(oceaniacovid1Jul20$total_deaths)] <- 0


#Covid cases on 1st January 2021

asiacovid1Jan21<- owidcovid %>% filter(continent == "Asia" & date == "2021-01-01")
africacovid1Jan21<- owidcovid %>% filter(continent == "Africa" & date == "2021-01-01")
europecovid1Jan21<- owidcovid %>% filter(continent == "Europe" & date == "2021-01-01")
namericacovid1Jan21<- owidcovid %>% filter(continent == "North America" & date == "2021-01-01")
samericacovid1Jan21<- owidcovid %>% filter(continent == "South America" & date == "2021-01-01")
oceaniacovid1Jan21<- owidcovid %>% filter(continent == "Oceania" & date == "2021-01-01")

#Replace NAs with 0s

asiacovid1Jan21$total_cases[is.na(asiacovid1Jan21$total_cases)] <- 0
africacovid1Jan21$total_cases[is.na(africacovid1Jan21$total_cases)] <- 0
europecovid1Jan21$total_cases[is.na(europecovid1Jan21$total_cases)] <- 0
namericacovid1Jan21$total_cases[is.na(namericacovid1Jan21$total_cases)] <- 0
samericacovid1Jan21$total_cases[is.na(samericacovid1Jan21$total_cases)] <- 0
oceaniacovid1Jan21$total_cases[is.na(oceaniacovid1Jan21$total_cases)] <- 0

asiacovid1Jan21$total_deaths[is.na(asiacovid1Jan21$total_deaths)] <- 0
africacovid1Jan21$total_deaths[is.na(africacovid1Jan21$total_deaths)] <- 0
europecovid1Jan21$total_deaths[is.na(europecovid1Jan21$total_deaths)] <- 0
namericacovid1Jan21$total_deaths[is.na(namericacovid1Jan21$total_deaths)] <- 0
samericacovid1Jan21$total_deaths[is.na(samericacovid1Jan21$total_deaths)] <- 0
oceaniacovid1Jan21$total_deaths[is.na(oceaniacovid1Jan21$total_deaths)] <- 0

#Covid cases on 1st July 2021

asiacovid1Jul21<- owidcovid %>% filter(continent == "Asia" & date == "2021-07-01")
africacovid1Jul21<- owidcovid %>% filter(continent == "Africa" & date == "2021-07-01")
europecovid1Jul21<- owidcovid %>% filter(continent == "Europe" & date == "2021-07-01")
namericacovid1Jul21<- owidcovid %>% filter(continent == "North America" & date == "2021-07-01")
samericacovid1Jul21<- owidcovid %>% filter(continent == "South America" & date == "2021-07-01")
oceaniacovid1Jul21<- owidcovid %>% filter(continent == "Oceania" & date == "2021-07-01")

#Replace NAs with 0s

asiacovid1Jul21$total_cases[is.na(asiacovid1Jul21$total_cases)] <- 0
africacovid1Jul21$total_cases[is.na(africacovid1Jul21$total_cases)] <- 0
europecovid1Jul21$total_cases[is.na(europecovid1Jul21$total_cases)] <- 0
namericacovid1Jul21$total_cases[is.na(namericacovid1Jul21$total_cases)] <- 0
samericacovid1Jul21$total_cases[is.na(samericacovid1Jul21$total_cases)] <- 0
oceaniacovid1Jul21$total_cases[is.na(oceaniacovid1Jul21$total_cases)] <- 0

asiacovid1Jul21$total_deaths[is.na(asiacovid1Jul21$total_deaths)] <- 0
africacovid1Jul21$total_deaths[is.na(africacovid1Jul21$total_deaths)] <- 0
europecovid1Jul21$total_deaths[is.na(europecovid1Jul21$total_deaths)] <- 0
namericacovid1Jul21$total_deaths[is.na(namericacovid1Jul21$total_deaths)] <- 0
samericacovid1Jul21$total_deaths[is.na(samericacovid1Jul21$total_deaths)] <- 0
oceaniacovid1Jul21$total_deaths[is.na(oceaniacovid1Jul21$total_deaths)] <- 0

#Covid cases on 1st January 2022

asiacovid1Jan22<- owidcovid %>% filter(continent == "Asia" & date == "2022-01-01")
africacovid1Jan22<- owidcovid %>% filter(continent == "Africa" & date == "2022-01-01")
europecovid1Jan22<- owidcovid %>% filter(continent == "Europe" & date == "2022-01-01")
namericacovid1Jan22<- owidcovid %>% filter(continent == "North America" & date == "2022-01-01")
samericacovid1Jan22<- owidcovid %>% filter(continent == "South America" & date == "2022-01-01")
oceaniacovid1Jan22<- owidcovid %>% filter(continent == "Oceania" & date == "2022-01-01")

#Replace NAs with 0s

asiacovid1Jan22$total_cases[is.na(asiacovid1Jan22$total_cases)] <- 0
africacovid1Jan22$total_cases[is.na(africacovid1Jan22$total_cases)] <- 0
europecovid1Jan22$total_cases[is.na(europecovid1Jan22$total_cases)] <- 0
namericacovid1Jan22$total_cases[is.na(namericacovid1Jan22$total_cases)] <- 0
samericacovid1Jan22$total_cases[is.na(samericacovid1Jan22$total_cases)] <- 0
oceaniacovid1Jan22$total_cases[is.na(oceaniacovid1Jan22$total_cases)] <- 0

asiacovid1Jan22$total_deaths[is.na(asiacovid1Jan22$total_deaths)] <- 0
africacovid1Jan22$total_deaths[is.na(africacovid1Jan22$total_deaths)] <- 0
europecovid1Jan22$total_deaths[is.na(europecovid1Jan22$total_deaths)] <- 0
namericacovid1Jan22$total_deaths[is.na(namericacovid1Jan22$total_deaths)] <- 0
samericacovid1Jan22$total_deaths[is.na(samericacovid1Jan22$total_deaths)] <- 0
oceaniacovid1Jan22$total_deaths[is.na(oceaniacovid1Jan22$total_deaths)] <- 0

covidtotalcasesplot <- data.frame (Date  = c("2020,5", "2021", "2021,5", "2022"),
                                   Asia = c(sum(asiacovid1Jul20$total_cases),sum(asiacovid1Jan21$total_cases),sum(asiacovid1Jul21$total_cases),sum(asiacovid1Jan22$total_cases)),
                                   Africa = c(sum(africacovid1Jul20$total_cases),sum(africacovid1Jan21$total_cases),sum(africacovid1Jul21$total_cases),sum(africacovid1Jan22$total_cases)),
                                   North_America = c(sum(namericacovid1Jul20$total_cases),sum(namericacovid1Jan21$total_cases),sum(namericacovid1Jul21$total_cases),sum(namericacovid1Jan22$total_cases)),
                                   South_America = c(sum(samericacovid1Jul20$total_cases),sum(samericacovid1Jan21$total_cases),sum(samericacovid1Jul21$total_cases),sum(samericacovid1Jan22$total_cases)),
                                   Europe = c(sum(europecovid1Jul20$total_cases),sum(europecovid1Jan21$total_cases),sum(europecovid1Jul21$total_cases),sum(europecovid1Jan22$total_cases)),
                                   Oceania = c(sum(oceaniacovid1Jul20$total_cases),sum(oceaniacovid1Jan21$total_cases),sum(oceaniacovid1Jul21$total_cases),sum(oceaniacovid1Jan22$total_cases))
                                   
)


write.xlsx(covidtotalcasesplot, "covidtotalcases.xlsx")


ggplot(covidtotalcasesplot, aes)


ggplot(covidtotalcasesplot, aes(x = covidtotalcasesplot$Date)) +
  geom_line(aes(y = covidtotalcasesplot$Asia, group = 1, color = "Asia")) +
  geom_line(aes(y = covidtotalcasesplot$Africa, group = 1, color = "Africa")) +
  geom_line(aes(y = covidtotalcasesplot$Europe, group = 1, color = "Europe")) +
  geom_line(aes(y = covidtotalcasesplot$Oceania, group = 1, color = "Oceania")) +
  geom_line(aes(y = covidtotalcasesplot$North_America, group = 1, color = "North America"))+
  geom_line(aes(y = covidtotalcasesplot$South_America, group = 1, color = "South America")) +
  scale_color_manual(name = "Total Covid Cases pro continent", values = c("Africa" = "darkblue", "North America" = "red",
                                                                     "Asia" = "yellow", "Europe" = "Green",
                                                                     "Oceania" = "pink", "South America" = "black"))+
  labs(x = "Year",
       y = "Total Covid Cases pro continent")


covidtotaldeathsplot <- data.frame (Date  = c("2020,5", "2021", "2021,5", "2022"),
                                   Asia = c(sum(asiacovid1Jul20$total_deaths),sum(asiacovid1Jan21$total_deaths),sum(asiacovid1Jul21$total_deaths),sum(asiacovid1Jan22$total_deaths)),
                                   Africa = c(sum(africacovid1Jul20$total_deaths),sum(africacovid1Jan21$total_deaths),sum(africacovid1Jul21$total_deaths),sum(africacovid1Jan22$total_deaths)),
                                   North_America = c(sum(namericacovid1Jul20$total_deaths),sum(namericacovid1Jan21$total_deaths),sum(namericacovid1Jul21$total_deaths),sum(namericacovid1Jan22$total_deaths)),
                                   South_America = c(sum(samericacovid1Jul20$total_deaths),sum(samericacovid1Jan21$total_deaths),sum(samericacovid1Jul21$total_deaths),sum(samericacovid1Jan22$total_deaths)),
                                   Europe = c(sum(europecovid1Jul20$total_deaths),sum(europecovid1Jan21$total_deaths),sum(europecovid1Jul21$total_deaths),sum(europecovid1Jan22$total_deaths)),
                                   Oceania = c(sum(oceaniacovid1Jul20$total_deaths),sum(oceaniacovid1Jan21$total_deaths),sum(oceaniacovid1Jul21$total_deaths),sum(oceaniacovid1Jan22$total_deaths))
                                   
)

write.xlsx(covidtotaldeathsplot, "covidtotaldeaths.xlsx")

ggplot(covidtotaldeathsplot, aes(x = covidtotaldeathsplot$Date)) +
  geom_line(aes(y = covidtotaldeathsplot$Asia, group = 1, color = "Asia")) +
  geom_line(aes(y = covidtotaldeathsplot$Africa, group = 1, color = "Africa")) +
  geom_line(aes(y = covidtotaldeathsplot$Europe, group = 1, color = "Europe")) +
  geom_line(aes(y = covidtotaldeathsplot$Oceania, group = 1, color = "Oceania")) +
  geom_line(aes(y = covidtotaldeathsplot$North_America, group = 1, color = "North America"))+
  geom_line(aes(y = covidtotaldeathsplot$South_America, group = 1, color = "South America")) +
  scale_color_manual(name = "Total Covid Deaths pro continent", values = c("Africa" = "darkblue", "North America" = "red",
                                                                          "Asia" = "yellow", "Europe" = "Green",
                                                                          "Oceania" = "pink", "South America" = "black"))+
  labs(x = "Year",
       y = "Total Covid Deaths pro continent")


#Read excel files containing information on 25 U.S. cities 

usa_covid_jul20 <- read_excel("Filteryear2020mid_USA.xlsx")
usa_covid_jan21 <- read_excel("Filteryear2021_USA.xlsx")
usa_covid_jul21 <- read_excel("Filteryear2021mid_USA.xlsx")
usa_covid_jan22 <- read_excel("Filteryear2022_USA.xlsx")

#Mutate columns to calculate new deaths per each semester

usa_covid_jan21 <- usa_covid_jan21 %>%
  mutate(new_covid_deaths = usa_covid_jan21$Covid_Deaths_1_1_21 - usa_covid_jul20$`Covid Deaths`,
         qolindexdiff = usa_covid_jan21$`Quality of Life Index` - usa_covid_jul20$`Quality of Life Index`,
         healthindexdiff =  usa_covid_jan21$`Health Care Index` -  usa_covid_jul20$`Health Care Index`)

usa_covid_jul21 <- usa_covid_jul21 %>%
  mutate(new_covid_deaths = usa_covid_jul21$`Covid Deaths` - usa_covid_jan21$Covid_Deaths_1_1_21,
         qolindexdiff = usa_covid_jul21$`Quality of Life Index` - usa_covid_jan21$`Quality of Life Index`,
         healthindexdiff = usa_covid_jul21$`Health Care Index` - usa_covid_jan21$`Health Care Index`)

usa_covid_jan22 <- usa_covid_jan22 %>%
  mutate(new_covid_deaths = usa_covid_jan22$`Covid Deaths` - usa_covid_jul21$`Covid Deaths`,
         qolindexdiff = usa_covid_jan22$`Quality of Life Index` - usa_covid_jul21$`Quality of Life Index` ,
         healthindexdiff = usa_covid_jan22$`Health Care Index` - usa_covid_jul21$`Health Care Index`)

#Start plotting

ggplot(usa_covid_jul20, aes(usa_covid_jul20$`Covid Deaths`,usa_covid_jul20$`Quality of Life Index`)) +
  geom_point() +
  geom_smooth(method="lm", se=TRUE, fullrange=FALSE, level=0.95)

cor.test(usa_covid_jul20$`Covid Deaths`, usa_covid_jul20$`Quality of Life Index`, 
         method = "pearson")

ggplot(usa_covid_jul20, aes(usa_covid_jul20$`Covid Deaths`,usa_covid_jul20$`Health Care Index`)) +
  geom_point() +
  geom_smooth(method="lm", se=TRUE, fullrange=FALSE, level=0.95)

cor.test(usa_covid_jul20$`Covid Deaths`, usa_covid_jul20$`Health Care Index`, 
         method = "pearson")

#January 2021 Plots

ggplot(usa_covid_jan21, aes(usa_covid_jan21$new_covid_deaths,usa_covid_jan21$`Quality of Life Index`)) +
  geom_point() +
  geom_smooth(method="lm", se=TRUE, fullrange=FALSE, level=0.95)


cor.test(usa_covid_jan21$new_covid_deaths,usa_covid_jan21$`Quality of Life Index`, 
         method = "pearson")


ggplot(usa_covid_jan21, aes(usa_covid_jan21$new_covid_deaths,usa_covid_jan21$`Health Care Index`)) +
  geom_point() +
  geom_smooth(method="lm", se=TRUE, fullrange=FALSE, level=0.95)

cor.test(usa_covid_jan21$new_covid_deaths,usa_covid_jan21$`Health Care Index`, 
         method = "pearson")

ggplot(usa_covid_jan21, aes(usa_covid_jan21$new_covid_deaths,usa_covid_jan21$qolindexdiff)) +
  geom_point() +
  geom_smooth(method="lm", se=TRUE, fullrange=FALSE, level=0.95)

cor.test(usa_covid_jan21$new_covid_deaths,usa_covid_jan21$qolindexdiff, 
         method = "pearson")


ggplot(usa_covid_jan21, aes(usa_covid_jan21$new_covid_deaths,usa_covid_jan21$healthindexdiff)) +
  geom_point() +
  geom_smooth(method="lm", se=TRUE, fullrange=FALSE, level=0.95)

cor.test(usa_covid_jan21$new_covid_deaths,usa_covid_jan21$healthindexdiff, 
         method = "pearson")

#July 2021 Plots

ggplot(usa_covid_jul21, aes(usa_covid_jul21$new_covid_deaths,usa_covid_jul21$`Quality of Life Index`)) +
  geom_point() +
  geom_smooth(method="lm", se=TRUE, fullrange=FALSE, level=0.95)


cor.test(usa_covid_jul21$new_covid_deaths,usa_covid_jul21$`Quality of Life Index`, 
         method = "pearson")

ggplot(usa_covid_jul21, aes(usa_covid_jul21$new_covid_deaths,usa_covid_jul21$`Health Care Index`)) +
  geom_point() +
  geom_smooth(method="lm", se=TRUE, fullrange=FALSE, level=0.95)

cor.test(usa_covid_jul21$new_covid_deaths,usa_covid_jul21$`Health Care Index`, 
         method = "pearson")

ggplot(usa_covid_jul21, aes(usa_covid_jul21$new_covid_deaths,usa_covid_jul21$qolindexdiff)) +
  geom_point() +
  geom_smooth(method="lm", se=TRUE, fullrange=FALSE, level=0.95)

cor.test(usa_covid_jul21$new_covid_deaths,usa_covid_jul21$qolindexdiff, 
         method = "pearson")

ggplot(usa_covid_jul21, aes(usa_covid_jul21$new_covid_deaths,usa_covid_jul21$healthindexdiff)) +
  geom_point() +
  geom_smooth(method="lm", se=TRUE, fullrange=FALSE, level=0.95)

cor.test(usa_covid_jul21$new_covid_deaths,usa_covid_jul21$healthindexdiff, 
         method = "pearson")

#January 2022

ggplot(usa_covid_jan22, aes(usa_covid_jan22$new_covid_deaths,usa_covid_jan22$`Quality of Life Index`)) +
  geom_point() +
  geom_smooth(method="lm", se=TRUE, fullrange=FALSE, level=0.95)

cor.test(usa_covid_jan22$new_covid_deaths,usa_covid_jan22$`Quality of Life Index`, 
         method = "pearson")

ggplot(usa_covid_jan22, aes(usa_covid_jan22$new_covid_deaths,usa_covid_jan22$`Health Care Index`)) +
  geom_point() +
  geom_smooth(method="lm", se=TRUE, fullrange=FALSE, level=0.95)

cor.test(usa_covid_jan22$new_covid_deaths,usa_covid_jan22$`Health Care Index`, 
         method = "pearson")

ggplot(usa_covid_jan22, aes(usa_covid_jan22$new_covid_deaths,usa_covid_jan22$qolindexdiff)) +
  geom_point() +
  geom_smooth(method="lm", se=TRUE, fullrange=FALSE, level=0.95)

cor.test(usa_covid_jan22$new_covid_deaths,usa_covid_jan22$qolindexdiff, 
         method = "pearson")

ggplot(usa_covid_jan22, aes(usa_covid_jan22$new_covid_deaths,usa_covid_jan22$healthindexdiff)) +
  geom_point() +
  geom_smooth(method="lm", se=TRUE, fullrange=FALSE, level=0.95)

cor.test(usa_covid_jan22$new_covid_deaths,usa_covid_jan22$healthindexdiff, 
         method = "pearson")

df <- data.frame(Mon=c(100, 0, 34),
                 Tue=c(100, 0, 48),
                 Wed=c(100, 0, 58),
                 Thu=c(100, 0, 67),
                 Fri=c(100, 0, 55),
                 Sat=c(100, 0, 29),
                 Sun=c(100, 0, 18))
