if (!require("tidyverse")) install.packages("tidyverse")

library (tidyverse)

survey <- read.csv ("city-of-st-louis-survey.csv")

decode <- read.csv ("city-of-st-louis-decode.csv")

survey <- select(survey, Owner, Land.Area)

survey$first <- substr(survey$Owner, 1, 1)

survey_A <- survey[which(survey$first=="A"),]

survey_A <- merge(survey, decode, by.x="Owner",by.y="Original.Name")

summary <- survey_A %>% group_by(Standardized.Names) %>%
  summarise(area = sum(Land.Area))

summary <- summary %>% arrange(desc(area))

head (summary, 10)

