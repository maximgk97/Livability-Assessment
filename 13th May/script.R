setwd("C:/Users/Maxim/Documents/Livability in smart cities/13th May")
getwd()
library(readxl)
library(tidyverse)
library(ggplot2)
library("xlsx")
install.packages("Hmisc") #Package for correlation matrix
library("Hmisc")
install.packages("FactoMineR")
install.packages("factoextra")
install.packages("ggmap")
install.packages("tmaptools")
install.packages("RCurl")
install.packages("jsonlite")
install.packages("tidyverse")
install.packages("leaflet")

library(FactoMineR)
library(factoextra)
library(fmsb)
#Read excel files

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

#African Quality of Life index

africa_year_2017 <- read_excel("Continents/Africa/africa_index_2017.xlsx")
africa_year_2017_mid <- read_excel("Continents/Africa/africa_index_2017_mid.xlsx")
africa_year_2018 <- read_excel("Continents/Africa/africa_index_2018.xlsx")
africa_year_2018_mid <- read_excel("Continents/Africa/africa_index_2018_mid.xlsx")
africa_year_2019 <- read_excel("Continents/Africa/africa_index_2019.xlsx")
africa_year_2019_mid <- read_excel("Continents/Africa/africa_index_2019_mid.xlsx")
africa_year_2020 <- read_excel("Continents/Africa/africa_index_2020.xlsx")
africa_year_2020_mid <- read_excel("Continents/Africa/africa_index_2020_mid.xlsx")
africa_year_2021 <- read_excel("Continents/Africa/africa_index_2021.xlsx")
africa_year_2021_mid <- read_excel("Continents/Africa/africa_index_2021_mid.xlsx")
africa_year_2022 <- read_excel("Continents/Africa/africa_index_2022.xlsx")

#American Quality of Life Index

america_year_2017 <- read_excel("Continents/America/america_index_2017.xlsx")
america_year_2017_mid <- read_excel("Continents/America/america_index_2017_mid.xlsx")
america_year_2018 <- read_excel("Continents/America/america_index_2018.xlsx")
america_year_2018_mid <- read_excel("Continents/America/america_index_2018_mid.xlsx")
america_year_2019 <- read_excel("Continents/America/america_index_2019.xlsx")
america_year_2019_mid <- read_excel("Continents/America/america_index_2019_mid.xlsx")
america_year_2020 <- read_excel("Continents/America/america_index_2020.xlsx")
america_year_2020_mid <- read_excel("Continents/America/america_index_2020_mid.xlsx")
america_year_2021 <- read_excel("Continents/America/america_index_2021.xlsx")
america_year_2021_mid <- read_excel("Continents/America/america_index_2021_mid.xlsx")
america_year_2022 <- read_excel("Continents/America/america_index_2022.xlsx")

#Asian Quality of Life Index

asia_year_2017 <- read_excel("Continents/Asia/asia_index_2017.xlsx")
asia_year_2017_mid <- read_excel("Continents/Asia/asia_index_2017_mid.xlsx")
asia_year_2018 <- read_excel("Continents/Asia/asia_index_2018.xlsx")
asia_year_2018_mid <- read_excel("Continents/Asia/asia_index_2018_mid.xlsx")
asia_year_2019 <- read_excel("Continents/Asia/asia_index_2019.xlsx")
asia_year_2019_mid <- read_excel("Continents/Asia/asia_index_2019_mid.xlsx")
asia_year_2020 <- read_excel("Continents/Asia/asia_index_2020.xlsx")
asia_year_2020_mid <- read_excel("Continents/Asia/asia_index_2020_mid.xlsx")
asia_year_2021 <- read_excel("Continents/Asia/asia_index_2021.xlsx")
asia_year_2021_mid <- read_excel("Continents/Asia/asia_index_2021_mid.xlsx")
asia_year_2022 <- read_excel("Continents/Asia/asia_index_2022.xlsx")

#Europe Quality of Life Index

europe_year_2017 <- read_excel("Continents/Europe/europe_index_2017.xlsx")
europe_year_2017_mid <- read_excel("Continents/Europe/europe_index_2017_mid.xlsx")
europe_year_2018 <- read_excel("Continents/Europe/europe_index_2018.xlsx")
europe_year_2018_mid <- read_excel("Continents/Europe/europe_index_2018_mid.xlsx")
europe_year_2019 <- read_excel("Continents/Europe/europe_index_2019.xlsx")
europe_year_2019_mid <- read_excel("Continents/Europe/europe_index_2019_mid.xlsx")
europe_year_2020 <- read_excel("Continents/Europe/europe_index_2020.xlsx")
europe_year_2020_mid <- read_excel("Continents/Europe/europe_index_2020_mid.xlsx")
europe_year_2021 <- read_excel("Continents/Europe/europe_index_2021.xlsx")
europe_year_2021_mid <- read_excel("Continents/Europe/europe_index_2021_mid.xlsx")
europe_year_2022 <- read_excel("Continents/Europe/europe_index_2022.xlsx")



#Oceania Quality of Life Index

oceania_year_2017 <- read_excel("Continents/Oceania/oceania_index_2017.xlsx")
oceania_year_2017_mid <- read_excel("Continents/Oceania/oceania_index_2017_mid.xlsx")
oceania_year_2018 <- read_excel("Continents/Oceania/oceania_index_2018.xlsx")
oceania_year_2018_mid <- read_excel("Continents/Oceania/oceania_index_2018_mid.xlsx")
oceania_year_2019 <- read_excel("Continents/Oceania/oceania_index_2019.xlsx")
oceania_year_2019_mid <- read_excel("Continents/Oceania/oceania_index_2019_mid.xlsx")
oceania_year_2020 <- read_excel("Continents/Oceania/oceania_index_2020.xlsx")
oceania_year_2020_mid <- read_excel("Continents/Oceania/oceania_index_2020_mid.xlsx")
oceania_year_2021 <- read_excel("Continents/Oceania/oceania_index_2021.xlsx")
oceania_year_2021_mid <- read_excel("Continents/Oceania/oceania_index_2021_mid.xlsx")
oceania_year_2022 <-read_excel("Continents/Oceania/oceania_index_2022.xlsx")


#Filter cities from 2019 so that they are equal to the number of cities in 2018

testdata <- year_2019 %>% filter(
  City %in% year_2018$City)

testdata2018 <- year_2018 %>% filter(
  City %in% testdata$City)


#Alternative method of selecting cities that were present in 2018 from the 2019
subsetdata2019 <- subset(year_2019, City %in% year_2018$City) 

subsetdata2019 <- subsetdata2019[order(subsetdata2019$City),]
year_2018 <-  year_2018[order(year_2018$City),]

rankdiff <- subsetdata2019 %>%
  mutate(subsetdata2019$Rank - year_2018$Rank) # Works

year_2018$`Safety Index`

# indexcomparison <- data.frame("Year" = c("2018","2018,5","2019","2019,5","2020","2020,5","2021","2021,5","2022"),
#                               "Quality of Life" = c(mean(year_2018$`Quality of Life Index`),mean(year_2018_mid$`Quality of Life Index`),
#                                                     mean(year_2019$`Quality of Life Index`),mean(year_2019_mid$`Quality of Life Index`),
#                                                     mean(year_2020$`Quality of Life Index`),mean(year_2020_mid$`Quality of Life Index`),
#                                                     mean(year_2021$`Quality of Life Index`),mean(year_2021_mid$`Quality of Life Index`),
#                                                     mean(year_2022$`Quality of Life Index`)
#                               )
# ) works


indexcomparison <- data.frame("Year" = c("2017","2017,5","2018","2018,5","2019","2019,5","2020","2020,5","2021","2021,5","2022"),
                 "Quality of Life" = c(mean(year_2017$`Quality of Life Index`),mean(year_2017_mid$`Quality of Life Index`),
                   mean(year_2018$`Quality of Life Index`),mean(year_2018_mid$`Quality of Life Index`),
                                       mean(year_2019$`Quality of Life Index`),mean(year_2019_mid$`Quality of Life Index`),
                                       mean(year_2020$`Quality of Life Index`),mean(year_2020_mid$`Quality of Life Index`),
                                       mean(year_2021$`Quality of Life Index`),mean(year_2021_mid$`Quality of Life Index`),
                                       mean(year_2022$`Quality of Life Index`)
                                       )
                 )

str(year_2017_mid)












summary(year_2017$`Climate Index`) #Doesnt works probably due to some cities have negative value

summary(year_2021$`Climate Index`) # works fine

indexcomparison

ggplot(indexcomparison, aes( y =Quality.of.Life, group = 1)) +
  geom_boxplot()

boxplot(indexcomparison$Quality.of.Life)


boxplot(year_2017$`Quality of Life Index`, year_2017_mid$`Quality of Life Index`, year_2018$`Quality of Life Index`, year_2018_mid$`Quality of Life Index`,
        year_2019$`Quality of Life Index`, year_2019_mid$`Quality of Life Index`,year_2020$`Quality of Life Index`, year_2020_mid$`Quality of Life Index`,
        year_2021$`Quality of Life Index`, year_2021_mid$`Quality of Life Index`,year_2022$`Quality of Life Index`,
        main = "Multiple boxplots for comparison",
        names = c("2017", "2017mid", "2018", "2018mid", "2019", "2019mid","2020", "2020mid","2021", "2021mid", "2022"),
        las = 2,
        col = c("orange","red"),
        border = "brown",
        horizontal = FALSE,
        notch = TRUE
)

summary(year_2017$`Quality of Life Index`)


indexcomparison$"Quality of Life (Africa)" <- c(mean(africa_year_2017$`Quality of Life Index`),mean(africa_year_2017_mid$`Quality of Life Index`),
                                                    mean(africa_year_2018$`Quality of Life Index`),mean(africa_year_2018_mid$`Quality of Life Index`),
                                                    mean(africa_year_2019$`Quality of Life Index`),mean(africa_year_2019_mid$`Quality of Life Index`),
                                                    mean(africa_year_2020$`Quality of Life Index`),mean(africa_year_2020_mid$`Quality of Life Index`),
                                                    mean(africa_year_2021$`Quality of Life Index`),mean(africa_year_2021_mid$`Quality of Life Index`),
                                                    mean(africa_year_2022$`Quality of Life Index`))

indexcomparison$"Quality of Life (Asia)" <- c(mean(asia_year_2017$`Quality of Life Index`),mean(asia_year_2017_mid$`Quality of Life Index`),
                                                mean(asia_year_2018$`Quality of Life Index`),mean(asia_year_2018_mid$`Quality of Life Index`),
                                                mean(asia_year_2019$`Quality of Life Index`),mean(asia_year_2019_mid$`Quality of Life Index`),
                                                mean(asia_year_2020$`Quality of Life Index`),mean(asia_year_2020_mid$`Quality of Life Index`),
                                                mean(asia_year_2021$`Quality of Life Index`),mean(asia_year_2021_mid$`Quality of Life Index`),
                                                mean(asia_year_2022$`Quality of Life Index`))

indexcomparison$"Quality of Life (America)" <- c(mean(america_year_2017$`Quality of Life Index`),mean(america_year_2017_mid$`Quality of Life Index`),
                                              mean(america_year_2018$`Quality of Life Index`),mean(america_year_2018_mid$`Quality of Life Index`),
                                              mean(america_year_2019$`Quality of Life Index`),mean(america_year_2019_mid$`Quality of Life Index`),
                                              mean(america_year_2020$`Quality of Life Index`),mean(america_year_2020_mid$`Quality of Life Index`),
                                              mean(america_year_2021$`Quality of Life Index`),mean(america_year_2021_mid$`Quality of Life Index`),
                                              mean(america_year_2022$`Quality of Life Index`))

indexcomparison$"Quality of Life (Europe)" <- c(mean(europe_year_2017$`Quality of Life Index`),mean(europe_year_2017_mid$`Quality of Life Index`),
                                              mean(europe_year_2018$`Quality of Life Index`),mean(europe_year_2018_mid$`Quality of Life Index`),
                                              mean(europe_year_2019$`Quality of Life Index`),mean(europe_year_2019_mid$`Quality of Life Index`),
                                              mean(europe_year_2020$`Quality of Life Index`),mean(europe_year_2020_mid$`Quality of Life Index`),
                                              mean(europe_year_2021$`Quality of Life Index`),mean(europe_year_2021_mid$`Quality of Life Index`),
                                              mean(europe_year_2022$`Quality of Life Index`))

indexcomparison$"Quality of Life (Oceania)" <- c(mean(oceania_year_2017$`Quality of Life Index`),mean(oceania_year_2017_mid$`Quality of Life Index`),
                                                mean(oceania_year_2018$`Quality of Life Index`),mean(oceania_year_2018_mid$`Quality of Life Index`),
                                                mean(oceania_year_2019$`Quality of Life Index`),mean(oceania_year_2019_mid$`Quality of Life Index`),
                                                mean(oceania_year_2020$`Quality of Life Index`),mean(oceania_year_2020_mid$`Quality of Life Index`),
                                                mean(oceania_year_2021$`Quality of Life Index`),mean(oceania_year_2021_mid$`Quality of Life Index`),
                                                mean(oceania_year_2022$`Quality of Life Index`))

write.xlsx(indexcomparison, "Qualityofindexchange.xlsx")


ggplot(indexcomparison, aes(x = Year)) +
  geom_line(aes(y = `Quality.of.Life`, group = 1 ,colour =  "`Quality.of.Life`")) +
  geom_line(aes(y =  `Quality of Life (Africa)` ,color = "`Quality of Life (Africa)` ", group = 1)) +
  geom_line(aes(y = `Quality of Life (Asia)`  ,color = "`Quality of Life (Asia)`", group = 1)) +
  geom_line(aes(y = `Quality of Life (Europe)` ,color = "`Quality of Life (Europe)`",group = 1)) +
  geom_line(aes(y = `Quality of Life (America)` ,color = "`Quality of Life (America)`",group = 1)) +
  geom_line(aes(y = `Quality of Life (Oceania)` ,color = "`Quality of Life (Oceania)`", group = 1)) +
  labs(x = "Year",
       y = "Quality of Life index mean value")



  # theme(legend.key.height= unit(2, 'cm'),
  #       legend.key.width= unit(4, 'cm'))
    # color = "Legend")

# aggregate(`Quality of Life Index` ~ City, data = c(europe_year_2017,europe_year_2017_mid), FUN = mean) Different number of rows

# aggregate(`Quality of Life Index` ~ City, data = c(oceania_year_2017,oceania_year_2017_mid), FUN = mean) Works? Only shows values for 2017


# mixed_year_2017 = year_2017 %>% inner_join(year_2017_mid,by="City")
# mixed_year_2018 = year_2018 %>% inner_join(year_2018_mid,by="City")
# mixed_year_2019 = year_2019 %>% inner_join(year_2019_mid,by="City")
# mixed_year_2020 = year_2020 %>% inner_join(year_2020_mid,by="City")
# mixed_year_2021 = year_2021 %>% inner_join(year_2021_mid,by="City")
# mixed_year_2022 = mixed_year_2021 %>% inner_join(year_2022,by="City")
# mix2017_18 = mixed_year_2017 %>% inner_join(mixed_year_2018,by="City")

#Filtered general quality of life indexes for each year

#Year 2017

filter_year_2017 <- year_2017 %>% filter(
  City %in% year_2017_mid$City , City %in% year_2018$City , City %in% year_2018_mid$City, City %in% year_2019$City , City %in% year_2019_mid$City ,
    City %in% year_2020$City , City %in% year_2020_mid$City ,
    City %in% year_2021$City , City %in% year_2021_mid$City , City %in% year_2022$City)

filter_year_2017 <- filter_year_2017[order(filter_year_2017$City),]

#Year 2017 Mid

filter_year_2017_mid <- year_2017_mid %>% filter(
  City %in% year_2017$City , City %in% year_2018$City , City %in% year_2018_mid$City,
  City %in% year_2019$City , City %in% year_2019_mid$City ,
    City %in% year_2020$City , City %in% year_2020_mid$City ,
    City %in% year_2021$City , City %in% year_2021_mid$City , City %in% year_2022$City)

filter_year_2017_mid <- filter_year_2017_mid[order(filter_year_2017_mid$City),]

filter_year_2017_mid <-filter_year_2017_mid %>%
  mutate(diffto2017 = filter_year_2017$Rank - filter_year_2017_mid$Rank)

#Year 2018

filter_year_2018 <- year_2018 %>% filter(
  City %in% year_2017_mid$City , City %in% year_2017$City , City %in% year_2018_mid$City, City %in% year_2019$City , City %in% year_2019_mid$City ,
  City %in% year_2020$City , City %in% year_2020_mid$City ,
  City %in% year_2021$City , City %in% year_2021_mid$City , City %in% year_2022$City)

filter_year_2018 <- filter_year_2018[order(filter_year_2018$City),]
  
filter_year_2018 <-filter_year_2018 %>%
  mutate(diffto2017mid = filter_year_2017_mid$Rank - filter_year_2018$Rank)

# Year 2018 Mid

filter_year_2018_mid <- year_2018_mid %>% filter(
  City %in% year_2017$City , City %in% year_2018$City , City %in% year_2017_mid$City,
  City %in% year_2019$City , City %in% year_2019_mid$City ,
  City %in% year_2020$City , City %in% year_2020_mid$City ,
  City %in% year_2021$City , City %in% year_2021_mid$City , City %in% year_2022$City)

filter_year_2018_mid <- filter_year_2018_mid[order(filter_year_2018_mid$City),]

filter_year_2018_mid <-filter_year_2018_mid %>%
  mutate(diffto2018 = filter_year_2018$Rank - filter_year_2018_mid$Rank)

#Year 2019

filter_year_2019 <- year_2019 %>% filter(
  City %in% year_2017_mid$City , City %in% year_2017$City , City %in% year_2018_mid$City, City %in% year_2018$City , City %in% year_2019_mid$City ,
  City %in% year_2020$City , City %in% year_2020_mid$City ,
  City %in% year_2021$City , City %in% year_2021_mid$City , City %in% year_2022$City)

filter_year_2019 <- filter_year_2019[order(filter_year_2019$City),]

filter_year_2019 <-filter_year_2019 %>%
  mutate(diffto2018mid = filter_year_2018_mid$Rank - filter_year_2019$Rank)

# Year 2019 Mid

filter_year_2019_mid <- year_2019_mid %>% filter(
  City %in% year_2017$City , City %in% year_2018$City , City %in% year_2017_mid$City,
  City %in% year_2019$City , City %in% year_2018_mid$City ,
  City %in% year_2020$City , City %in% year_2020_mid$City ,
  City %in% year_2021$City , City %in% year_2021_mid$City , City %in% year_2022$City)

filter_year_2019_mid <- filter_year_2019_mid[order(filter_year_2019_mid$City),]

filter_year_2019_mid <-filter_year_2019_mid %>%
  mutate(diffto2019 = filter_year_2019$Rank - filter_year_2019_mid$Rank)

#Year 2020

filter_year_2020 <- year_2020 %>% filter(
  City %in% year_2017_mid$City , City %in% year_2017$City , City %in% year_2018_mid$City, City %in% year_2018$City , City %in% year_2019_mid$City ,
  City %in% year_2019$City , City %in% year_2020_mid$City ,
  City %in% year_2021$City , City %in% year_2021_mid$City , City %in% year_2022$City)

filter_year_2020 <- filter_year_2020[order(filter_year_2020$City),]

filter_year_2020 <-filter_year_2020 %>%
  mutate(diffto2019mid = filter_year_2019_mid$Rank - filter_year_2020$Rank)

# Year 2020 Mid

filter_year_2020_mid <- year_2020_mid %>% filter(
  City %in% year_2017$City , City %in% year_2018$City , City %in% year_2017_mid$City,
  City %in% year_2019$City , City %in% year_2018_mid$City ,
  City %in% year_2020$City , City %in% year_2019_mid$City ,
  City %in% year_2021$City , City %in% year_2021_mid$City , City %in% year_2022$City)

filter_year_2020_mid <- filter_year_2020_mid[order(filter_year_2020_mid$City),]

filter_year_2020_mid <-filter_year_2020_mid %>%
  mutate(diffto2020 = filter_year_2020$Rank - filter_year_2020_mid$Rank)

#Year 2021

filter_year_2021 <- year_2021 %>% filter(
  City %in% year_2017_mid$City , City %in% year_2017$City , City %in% year_2018_mid$City, City %in% year_2018$City , City %in% year_2019_mid$City ,
  City %in% year_2020$City , City %in% year_2020_mid$City ,
  City %in% year_2019$City , City %in% year_2021_mid$City , City %in% year_2022$City)

filter_year_2021 <- filter_year_2021[order(filter_year_2021$City),]

filter_year_2021 <-filter_year_2021 %>%
  mutate(diffto2020mid = filter_year_2020_mid$Rank - filter_year_2021$Rank)

# Year 2021 Mid

filter_year_2021_mid <- year_2021_mid %>% filter(
  City %in% year_2017$City , City %in% year_2018$City , City %in% year_2017_mid$City,
  City %in% year_2019$City , City %in% year_2018_mid$City ,
  City %in% year_2020$City , City %in% year_2020_mid$City ,
  City %in% year_2021$City , City %in% year_2019_mid$City , City %in% year_2022$City)

filter_year_2021_mid <- filter_year_2021_mid[order(filter_year_2021_mid$City),]

filter_year_2021_mid <-filter_year_2021_mid %>%
  mutate(diffto2021 = filter_year_2021$Rank - filter_year_2021_mid$Rank)

#Year 2022

filter_year_2022 <- year_2022 %>% filter(
  City %in% year_2017_mid$City , City %in% year_2017$City , City %in% year_2018_mid$City, City %in% year_2018$City , City %in% year_2019_mid$City ,
  City %in% year_2020$City , City %in% year_2020_mid$City ,
  City %in% year_2021$City , City %in% year_2021_mid$City , City %in% year_2019$City)

filter_year_2022 <- filter_year_2022[order(filter_year_2022$City),]

filter_year_2022 <-filter_year_2022 %>%
  mutate(diffto2021mid = filter_year_2021_mid$Rank - filter_year_2022$Rank)


#Dataframe with city names and their rank differences

qolindexcomparison <-  data.frame("City" = filter_year_2022$City,
                                  "Rank in 2017" = filter_year_2017$Rank,
                                  "Rank difference in 2017 Mid" = filter_year_2017_mid$diffto2017,
                                  "Rank difference in 2018" = filter_year_2018$diffto2017mid,
                                  "Rank difference in 2018 Mid" = filter_year_2018_mid$diffto2018,
                                  "Rank difference in 2019" = filter_year_2019$diffto2018mid,
                                  "Rank difference in 2019 Mid" = filter_year_2019_mid$diffto2019,
                                  "Rank difference in 2020" = filter_year_2020$diffto2019mid,
                                  "Rank difference in 2020 Mid" = filter_year_2020_mid$diffto2020,
                                  "Rank difference in 2021" = filter_year_2021$diffto2020mid,
                                  "Rank difference in 2021 Mid" = filter_year_2021_mid$diffto2021,
                                  "Rank difference in 2022" = filter_year_2022$diffto2021mid,
                                  "Average difference in change" = 
                                    )

head(qolindexcomparison)


qolindexcomparison$Avg_diff = rowMeans(qolindexcomparison[,c(3,4,5,6,7,8,9,10,11,12)]) # Works



cor(filter_year_2022$Rank,qolindexcomparison$Avg_diff)


head(qolindexcomparison)

sortedqolindexovertime <- qolindexcomparison[order(qolindexcomparison$Avg_diff)]


write.xlsx(qolindexcomparison, "qolifeovertime.xlsx")



head(qolindexcomparison$Avg_diff)


sortedqolindexcomparison

ggplot(filter_year_2022,aes(filter_year_2019$Rank, filter_year_2017_mid$diffto2017)) +
  geom_point() +
  geom_smooth(method="auto", se=TRUE, fullrange=FALSE, level=0.95)


ggplot(filter_year_2022,aes(filter_year_2022$Rank, filter_year_2020$Rank)) +
  geom_point() +
  geom_smooth(method="auto", se=TRUE, fullrange=FALSE, level=0.95)

#Compare difference in rank between 2020 and 2022
#select as x rank and y the difference

ggplot(filter_year_2022,aes(filter_year_2022$City, y = (filter_year_2020$Rank - filter_year_2022$Rank))) +
  geom_point() +
  geom_smooth(method="lm", se=TRUE, fullrange=FALSE, level=0.95)

rank2017_19mid <- data.frame(filter_year_2022$City,filter_year_2017$Rank,filter_year_2017_mid$Rank,filter_year_2018$Rank,filter_year_2018_mid$Rank,filter_year_2019$Rank,filter_year_2019_mid$Rank)
rank2017_19mid$Avg_Rank = rowMeans(rank2017_19mid[,c(2,3,4,5,6,7)])


rank2020_22 <- data.frame(filter_year_2022$City,filter_year_2020$Rank,filter_year_2020_mid$Rank,filter_year_2021$Rank,filter_year_2021_mid$Rank,filter_year_2022$Rank)
rank2020_22$Avg_Rank = rowMeans(rank2020_22[,c(2,3,4,5,6)])

cityaverage <-  data.frame("City" = filter_year_2022$City,
                                  "Average rank 2017-19mid" = rank2017_19mid$Avg_Rank,
                                  "Average rank 2020-22" = rank2020_22$Avg_Rank
)
cityaverage$rank_difference = cityaverage$Average.rank.2017.19mid - cityaverage$Average.rank.2020.22

cityaverageplot <- cityaverage[order(-cityaverage$rank_difference),]

cityaverageplottop5 <- cityaverageplot[1:5,]
cityaverageplotbot5 <- cityaverageplot[158:162,]

ggplot(cityaverageplottop5, aes(x = City)) +
  geom_point(aes(y = cityaverageplottop5$rank_difference, color = "yellow")) +
  geom_point(aes(y = cityaverageplottop5$Average.rank.2017.19mid, color = "green")) +
  geom_point(aes(y = cityaverageplottop5$Average.rank.2020.22, color = "red"))

ggplot(cityaverageplotbot5, aes(x = City)) +
  geom_point(aes(y = cityaverageplotbot5$rank_difference, color = "yellow")) +
  geom_point(aes(y = cityaverageplotbot5$Average.rank.2017.19mid, color = "green")) +
  geom_point(aes(y = cityaverageplotbot5$Average.rank.2020.22, color = "red"))


# write.xlsx(filter_year_2021, "Filteryear2021.xlsx")
#Covid cases according to the John Hopkins Github
covid1Jan21 <- read.csv("01-01-2021.csv")
covid1July21 <- read.csv("07-01-2021.csv")
covid1Jan22 <- read.csv("01-01-2022.csv")



filter_year_2021_mid_covid <- filter_year_2021_mid %>% filter(
  City %in% covidcase21$City)

write.xlsx(filter_year_2021_mid_covid, "Filteryear2021mid.xlsx")

covidcase21 <- read_excel("Filteryear2021.xlsx")
covidcase21 <- covidcase21 %>% drop_na()

covidcase21mid <- read_excel("Filteryear2021mid.xlsx")

ggplot(covidcase21, aes(x=covidcase21$Covid_Deaths_1_1_21, y = covidcase21$`Quality of Life Index`)) +
  geom_point() +
  geom_smooth(method="lm", se=TRUE, fullrange=FALSE, level=0.95)

covidcase21mid$deathdiff = covidcase21mid$Covid_Case_1_July -  covidcase21$Covid_Deaths_1_1_21
covidcase21mid$qolindexdiff = covidcase21mid$`Quality of Life Index` - covidcase21$`Quality of Life Index`
covidcase21mid$healthindexdiff = covidcase21mid$`Health Care Index` - covidcase21$`Health Care Index`

ggplot(covidcase21mid, aes(x = deathdiff, y = qolindexdiff)) +
  geom_point() +
  geom_smooth(method="lm", se=TRUE, fullrange=FALSE, level=0.95)

cor(covidcase21mid$deathdiff,covidcase21mid$qolindexdiff)

ggplot(covidcase21mid, aes(x = deathdiff, y = healthindexdiff)) +
  geom_point() +
  geom_smooth(method="lm", se=TRUE, fullrange=FALSE, level=0.95)

cor(covidcase21mid$deathdiff,covidcase21mid$healthindexdiff)

covidcase21usa <- read_excel("Filteryear2021_USA.xlsx")

ggplot(covidcase21usa, aes(covidcase21usa$Covid_Deaths_1_1_21, covidcase21usa$`Quality of Life Index`)) +
  geom_point() +
  geom_smooth(method="lm", se=TRUE, fullrange=FALSE, level=0.95)


cor.test(covidcase21usa$Covid_Deaths_1_1_21,covidcase21usa$`Quality of Life Index`, 
         method = "pearson")


# #Mean value of quality of life for each continent
# 
# #Africa
# 
# mean(africa_year_2017$`Quality of Life Index`)
# mean(africa_year_2017_mid$`Quality of Life Index`)
# mean(africa_year_2018$`Quality of Life Index`)
# mean(africa_year_2018_mid$`Quality of Life Index`)
# mean(africa_year_2019$`Quality of Life Index`)
# mean(africa_year_2019_mid$`Quality of Life Index`)
# mean(africa_year_2020$`Quality of Life Index`)
# mean(africa_year_2020_mid$`Quality of Life Index`)
# mean(africa_year_2021$`Quality of Life Index`)
# mean(africa_year_2021_mid$`Quality of Life Index`)
# mean(africa_year_2022$`Quality of Life Index`)
# 
# #America
# 
# mean(america_year_2017$`Quality of Life Index`)
# mean(america_year_2017_mid$`Quality of Life Index`)
# mean(america_year_2018$`Quality of Life Index`)
# mean(america_year_2018_mid$`Quality of Life Index`)
# mean(america_year_2019$`Quality of Life Index`)
# mean(america_year_2019_mid$`Quality of Life Index`)
# mean(america_year_2020$`Quality of Life Index`)
# mean(america_year_2020_mid$`Quality of Life Index`)
# mean(america_year_2021$`Quality of Life Index`)
# mean(america_year_2021_mid$`Quality of Life Index`)
# mean(america_year_2022$`Quality of Life Index`)
# 
# #Asia
# 
# mean(asia_year_2017$`Quality of Life Index`)
# mean(asia_year_2017_mid$`Quality of Life Index`)
# mean(asia_year_2018$`Quality of Life Index`)
# mean(asia_year_2018_mid$`Quality of Life Index`)
# mean(asia_year_2019$`Quality of Life Index`)
# mean(asia_year_2019_mid$`Quality of Life Index`)
# mean(asia_year_2020$`Quality of Life Index`)
# mean(asia_year_2020_mid$`Quality of Life Index`)
# mean(asia_year_2021$`Quality of Life Index`)
# mean(asia_year_2021_mid$`Quality of Life Index`)
# mean(asia_year_2022$`Quality of Life Index`)
# 
# #Europe
# 
# mean(europe_year_2017$`Quality of Life Index`)
# mean(europe_year_2017_mid$`Quality of Life Index`)
# mean(europe_year_2018$`Quality of Life Index`)
# mean(europe_year_2018_mid$`Quality of Life Index`)
# mean(europe_year_2019$`Quality of Life Index`)
# mean(europe_year_2019_mid$`Quality of Life Index`)
# mean(europe_year_2020$`Quality of Life Index`)
# mean(europe_year_2020_mid$`Quality of Life Index`)
# mean(europe_year_2021$`Quality of Life Index`)
# mean(europe_year_2021_mid$`Quality of Life Index`)
# mean(europe_year_2022$`Quality of Life Index`)
# 
# #Oceania
# 
# mean(oceania_year_2017$`Quality of Life Index`)
# mean(oceania_year_2017_mid$`Quality of Life Index`)
# mean(oceania_year_2018$`Quality of Life Index`)
# mean(oceania_year_2018_mid$`Quality of Life Index`)
# mean(oceania_year_2019$`Quality of Life Index`)
# mean(oceania_year_2019_mid$`Quality of Life Index`)
# mean(oceania_year_2020$`Quality of Life Index`)
# mean(oceania_year_2020_mid$`Quality of Life Index`)
# mean(oceania_year_2021$`Quality of Life Index`)
# mean(oceania_year_2021_mid$`Quality of Life Index`)
# mean(oceania_year_2022$`Quality of Life Index`)
# 
# #World
# 
# mean(year_2017$`Quality of Life Index`)
# mean(year_2017_mid$`Quality of Life Index`)
# mean(year_2018$`Quality of Life Index`)
# mean(year_2018_mid$`Quality of Life Index`)
# mean(year_2019$`Quality of Life Index`)
# mean(year_2019_mid$`Quality of Life Index`)
# mean(year_2020$`Quality of Life Index`)
# mean(year_2020_mid$`Quality of Life Index`)
# mean(year_2021$`Quality of Life Index`)
# mean(year_2021_mid$`Quality of Life Index`)
# mean(year_2022$`Quality of Life Index`)

qolindexplot <- read_excel("Qualityoflifemeanplot.xlsx")

ggplot(qolindexplot, aes(x = qolindexplot$Year)) +
  geom_line(aes(y = qolindexplot$Africa, color="Africa")) +
  geom_line(aes(y = qolindexplot$America, color="America")) +
  geom_line(aes(y = qolindexplot$Asia, color="Asia")) +
  geom_line(aes(y = qolindexplot$Europe, color="Europe")) +
  geom_line(aes(y = qolindexplot$Oceania, color="Oceania")) +
  geom_line(aes(y = qolindexplot$World, color="World"))+
  scale_color_manual(name = "Quality of life index mean", values = c("Africa" = "darkblue", "America" = "red",
                                                                     "Asia" = "yellow", "Europe" = "Green",
                                                                     "Oceania" = "pink", "World" = "black")) +
  labs(x = "Year", y = "Quality of life index mean pro year")

#Taking the first half of 2017 as the starting point to compare it with the beginning of the 2017


qolindexmeandiffplot <- read_excel("Qualityoflifemeandifferenceplot.xlsx")

ggplot(qolindexmeandiffplot, aes(x = qolindexmeandiffplot$Year)) +
  geom_line(aes(y = qolindexmeandiffplot$Africa, color="Africa")) +
  geom_line(aes(y = qolindexmeandiffplot$America, color="America")) +
  geom_line(aes(y = qolindexmeandiffplot$Asia, color="Asia")) +
  geom_line(aes(y = qolindexmeandiffplot$Europe, color="Europe")) +
  geom_line(aes(y = qolindexmeandiffplot$Oceania, color="Oceania")) +
  geom_line(aes(y = qolindexmeandiffplot$World, color="World"))+
  scale_color_manual(name = "Quality of life index mean difference", values = c("Africa" = "darkblue", "America" = "red",
                                                                     "Asia" = "yellow", "Europe" = "Green",
                                                                     "Oceania" = "pink", "World" = "black")) +
  labs(x = "Year", y = "Quality of life index mean difference pro half a year")
warnings()


colMeans(africa_year_2017_mid[sapply(africa_year_2017_mid, is.numeric)])

colMeans(africa_year_2018[sapply(africa_year_2018, is.numeric)])

colMeans(africa_year_2018_mid[sapply(africa_year_2018_mid, is.numeric)])

colMeans(africa_year_2019[sapply(africa_year_2019, is.numeric)])

colMeans(africa_year_2019_mid[sapply(africa_year_2019_mid, is.numeric)])

colMeans(africa_year_2020[sapply(africa_year_2020, is.numeric)])

colMeans(africa_year_2020_mid[sapply(africa_year_2020_mid, is.numeric)])

colMeans(africa_year_2021[sapply(africa_year_2021, is.numeric)])

colMeans(africa_year_2021_mid[sapply(africa_year_2021_mid, is.numeric)])

colMeans(africa_year_2022[sapply(africa_year_2022, is.numeric)])

#America

colMeans(america_year_2017[sapply(america_year_2017, is.numeric)])

colMeans(america_year_2017_mid[sapply(america_year_2017_mid, is.numeric)])

colMeans(america_year_2018[sapply(america_year_2018, is.numeric)])

colMeans(america_year_2018_mid[sapply(america_year_2018_mid, is.numeric)])

colMeans(america_year_2019[sapply(america_year_2019, is.numeric)])

colMeans(america_year_2019_mid[sapply(america_year_2019_mid, is.numeric)])

colMeans(america_year_2020[sapply(america_year_2020, is.numeric)])

colMeans(america_year_2020_mid[sapply(america_year_2020_mid, is.numeric)])

colMeans(america_year_2021[sapply(america_year_2021, is.numeric)])

colMeans(america_year_2021_mid[sapply(america_year_2021_mid, is.numeric)])

colMeans(america_year_2022[sapply(america_year_2022, is.numeric)])

#Asia

colMeans(asia_year_2017[sapply(asia_year_2017, is.numeric)])

colMeans(asia_year_2017_mid[sapply(asia_year_2017_mid, is.numeric)])

colMeans(asia_year_2018[sapply(asia_year_2018, is.numeric)])

colMeans(asia_year_2018_mid[sapply(asia_year_2018_mid, is.numeric)])

colMeans(asia_year_2019[sapply(asia_year_2019, is.numeric)])

colMeans(asia_year_2019_mid[sapply(asia_year_2019_mid, is.numeric)])

colMeans(asia_year_2020[sapply(asia_year_2020, is.numeric)])

colMeans(asia_year_2020_mid[sapply(asia_year_2020_mid, is.numeric)])

colMeans(asia_year_2021[sapply(asia_year_2021, is.numeric)])

colMeans(asia_year_2021_mid[sapply(asia_year_2021_mid, is.numeric)])

colMeans(asia_year_2022[sapply(asia_year_2022, is.numeric)])

#Europe

colMeans(europe_year_2017[sapply(europe_year_2017, is.numeric)])

colMeans(europe_year_2017_mid[sapply(europe_year_2017_mid, is.numeric)])

colMeans(europe_year_2018[sapply(europe_year_2018, is.numeric)])

colMeans(europe_year_2018_mid[sapply(europe_year_2018_mid, is.numeric)])

colMeans(europe_year_2019[sapply(europe_year_2019, is.numeric)])

colMeans(europe_year_2019_mid[sapply(europe_year_2019_mid, is.numeric)])

colMeans(europe_year_2020[sapply(europe_year_2020, is.numeric)])

colMeans(europe_year_2020_mid[sapply(europe_year_2020_mid, is.numeric)])

colMeans(europe_year_2021[sapply(europe_year_2021, is.numeric)])

colMeans(europe_year_2021_mid[sapply(europe_year_2021_mid, is.numeric)])

colMeans(europe_year_2022[sapply(europe_year_2022, is.numeric)])

#Oceania

colMeans(oceania_year_2017[sapply(oceania_year_2017, is.numeric)])

colMeans(oceania_year_2017_mid[sapply(oceania_year_2017_mid, is.numeric)])

colMeans(oceania_year_2018[sapply(oceania_year_2018, is.numeric)])

colMeans(oceania_year_2018_mid[sapply(oceania_year_2018_mid, is.numeric)])

colMeans(oceania_year_2019[sapply(oceania_year_2019, is.numeric)])

colMeans(oceania_year_2019_mid[sapply(oceania_year_2019_mid, is.numeric)])

colMeans(oceania_year_2020[sapply(oceania_year_2020, is.numeric)])

colMeans(oceania_year_2020_mid[sapply(oceania_year_2020_mid, is.numeric)])

colMeans(oceania_year_2021[sapply(oceania_year_2021, is.numeric)])

colMeans(oceania_year_2021_mid[sapply(oceania_year_2021_mid, is.numeric)])

colMeans(oceania_year_2022[sapply(oceania_year_2022, is.numeric)])
