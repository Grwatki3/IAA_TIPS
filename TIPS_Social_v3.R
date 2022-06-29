#Read in packages and install libs
install.packages("readxl")
install.packages("stringr")
install.packages("ggplot2")
library("readxl")
library("stringr")
library("ggplot2")
setwd("/Users/mvonsosen/Documents/AA500/MSAR")

#Read in file
tips_data_2022 <- read_excel("MSA_Tips.xlsx", sheet = 1)
tips_data_2021 <- read_excel("MSA_Tips.xlsx", sheet = 2)
tips_data_2020 <- read_excel("MSA_Tips.xlsx", sheet = 3)
tips_data_2019 <- read_excel("MSA_Tips.xlsx", sheet = 4)
tips_data_2018 <- read_excel("MSA_Tips.xlsx", sheet = 5)
tips_data_2017 <- read_excel("MSA_Tips.xlsx", sheet = 6)
tips_data_2016 <- read_excel("MSA_Tips.xlsx", sheet = 7)

#Search 2022 data for words "Social", "Friend", and "Friends", "Fun"

#Tip1
words = c("friend", "friends", "social", "fun")
count1_2022 = 0
for(word in words) {
  for(i in 1:length(tips_data_2022$Tip_1)) {
    if(grepl(word, tips_data_2022$Tip_1[i], fixed = TRUE) == TRUE) {
      count1_2022 = count1_2022 + 1
    }
  }
}

#Tip 2
count2_2022 = 0
for(word in words) {
  for(i in 1:length(tips_data_2022$Tip_2)) {
    if(grepl(word, tips_data_2022$Tip_2[i], fixed = TRUE) == TRUE) {
      count2_2022 = count2_2022 + 1
    }
  }
}

#Tip 3
count3_2022= 0
for(word in words) {
  for(i in 1:length(tips_data_2022$Tip_3)) {
    if(grepl(word, tips_data_2022$Tip_3[i], fixed = TRUE) == TRUE) {
      count3_2022 = count3_2022+ 1
    }
  }
}

#Other
countO_2022 = 0
for(word in words) {
  for(i in 1:length(tips_data_2022$Other)) {
    if(grepl(word, tips_data_2022$Other[i], fixed = TRUE) == TRUE) {
      countO_2022 = countO_2022 + 1
    }
  }
}


#total social word count for 2022
social_words_2022 = count1_2022 + count2_2022 + count3_2022 + countO_2022
#Number of obs that are not NA in 2022
total_tips_2022 = sum(!is.na(tips_data_2022))
#Percent socially relevant tips
percent_social_2022 = social_words_2022 / total_tips_2022
percent_social_2022


#--------------------------------------------------------------------------------

#Search 2021 data for words "Social", "Friend", and "Friends"

count1_2021 = 0
for(word in words) {
  for(i in 1:length(tips_data_2021$Tip_1)) {
    if(grepl(word, tips_data_2021$Tip_1[i], fixed = TRUE) == TRUE) {
      count1_2021 = count1_2021 + 1
    }
  }
}

#Tip 2
count2_2021 = 0
for(word in words) {
  for(i in 1:length(tips_data_2021$Tip_2)) {
    if(grepl(word, tips_data_2021$Tip_2[i], fixed = TRUE) == TRUE) {
      count2_2021 = count2_2021 + 1
    }
  }
}

#Tip 3
count3_2021= 0
for(word in words) {
  for(i in 1:length(tips_data_2021$Tip_3)) {
    if(grepl(word, tips_data_2021$Tip_3[i], fixed = TRUE) == TRUE) {
      count3_2021 = count3_2021 + 1
    }
  }
}

#Other
countO_2021 = 0
for(word in words) {
  for(i in 1:length(tips_data_2021$Other)) {
    if(grepl(word, tips_data_2021$Other[i], fixed = TRUE) == TRUE) {
      countO_2021 = countO_2021 + 1
    }
  }
}


#total social word count for 2021
social_words_2021 = count1_2021 + count2_2021 + count3_2021 + countO_2021
#Number of obs that are not NA in 2022
total_tips_2021 = sum(!is.na(tips_data_2021))
#Percent socially relevant tips
percent_social_2021 = social_words_2021 / total_tips_2021
percent_social_2021

#--------------------------------------------------------------------------------

#Search 2020 data for words "Social", "Friend", and "Friends"

count1_2020 = 0
for(word in words) {
  for(i in 1:length(tips_data_2020$Tip_1)) {
    if(grepl(word, tips_data_2020$Tip_1[i], fixed = TRUE) == TRUE) {
      count1_2020 = count1_2020 + 1
    }
  }
}

#Tip 2
count2_2020 = 0
for(word in words) {
  for(i in 1:length(tips_data_2020$Tip_2)) {
    if(grepl(word, tips_data_2020$Tip_2[i], fixed = TRUE) == TRUE) {
      count2_2020 = count2_2020 + 1
    }
  }
}

#Tip 3
count3_2020= 0
for(word in words) {
  for(i in 1:length(tips_data_2020$Tip_3)) {
    if(grepl(word, tips_data_2020$Tip_3[i], fixed = TRUE) == TRUE) {
      count3_2020 = count3_2020 + 1
    }
  }
}

#Other
countO_2020 = 0
for(word in words) {
  for(i in 1:length(tips_data_2020$Other)) {
    if(grepl(word, tips_data_2020$Other[i], fixed = TRUE) == TRUE) {
      countO_2020 = countO_2020 + 1
    }
  }
}


#total social word count for 2021
social_words_2020 = count1_2020 + count2_2020 + count3_2020 + countO_2020
#Number of obs that are not NA in 2022
total_tips_2020 = sum(!is.na(tips_data_2020))
#Percent socially relevant tips
percent_social_2020 = social_words_2020 / total_tips_2020
percent_social_2020

#--------------------------------------------------------------------------------

#Search 2019 data for words "Social", "Friend", and "Friends"

count1_2019 = 0
for(word in words) {
  for(i in 1:length(tips_data_2019$Tip_1)) {
    if(grepl(word, tips_data_2019$Tip_1[i], fixed = TRUE) == TRUE) {
      count1_2019 = count1_2019 + 1
    }
  }
}

#Tip 2
count2_2019 = 0
for(word in words) {
  for(i in 1:length(tips_data_2019$Tip_2)) {
    if(grepl(word, tips_data_2019$Tip_2[i], fixed = TRUE) == TRUE) {
      count2_2019 = count2_2019 + 1
    }
  }
}

#Tip 3
count3_2019= 0
for(word in words) {
  for(i in 1:length(tips_data_2019$Tip_3)) {
    if(grepl(word, tips_data_2019$Tip_3[i], fixed = TRUE) == TRUE) {
      count3_2019 = count3_2019 + 1
    }
  }
}

#Other
countO_2019 = 0
for(word in words) {
  for(i in 1:length(tips_data_2019$Other)) {
    if(grepl(word, tips_data_2019$Other[i], fixed = TRUE) == TRUE) {
      countO_2019 = countO_2019 + 1
    }
  }
}


#total social word count for 2021
social_words_2019 = count1_2019 + count2_2019 + count3_2019 + countO_2019
#Number of obs that are not NA in 2022
total_tips_2019 = sum(!is.na(tips_data_2019))
#Percent socially relevant tips
percent_social_2019 = social_words_2019 / total_tips_2019
percent_social_2019

#--------------------------------------------------------------------------------

#Search 2018 data for words "Social", "Friend", and "Friends"

count1_2018 = 0
for(word in words) {
  for(i in 1:length(tips_data_2018$Tip_1)) {
    if(grepl(word, tips_data_2018$Tip_1[i], fixed = TRUE) == TRUE) {
      count1_2018 = count1_2018 + 1
    }
  }
}

#Tip 2
count2_2018 = 0
for(word in words) {
  for(i in 1:length(tips_data_2018$Tip_2)) {
    if(grepl(word, tips_data_2018$Tip_2[i], fixed = TRUE) == TRUE) {
      count2_2018 = count2_2018 + 1
    }
  }
}

#Tip 3
count3_2018 = 0
for(word in words) {
  for(i in 1:length(tips_data_2018$Tip_3)) {
    if(grepl(word, tips_data_2018$Tip_3[i], fixed = TRUE) == TRUE) {
      count3_2018 = count3_2018 + 1
    }
  }
}

#Other
countO_2018 = 0
for(word in words) {
  for(i in 1:length(tips_data_2018$Other)) {
    if(grepl(word, tips_data_2018$Other[i], fixed = TRUE) == TRUE) {
      countO_2018 = countO_2018 + 1
    }
  }
}


#total social word count for 2021
social_words_2018 = count1_2018 + count2_2018 + count3_2018 + countO_2018
#Number of obs that are not NA in 2022
total_tips_2018 = sum(!is.na(tips_data_2018))
#Percent socially relevant tips
percent_social_2018 = social_words_2018 / total_tips_2018
percent_social_2018


#-----------------------------------------------------------------------

#Search 2017 data for words "Social", "Friend", and "Friends"

count1_2017 = 0
for(word in words) {
  for(i in 1:length(tips_data_2017$Tip_1)) {
    if(grepl(word, tips_data_2017$Tip_1[i], fixed = TRUE) == TRUE) {
      count1_2017 = count1_2017 + 1
    }
  }
}

#Tip 2
count2_2017 = 0
for(word in words) {
  for(i in 1:length(tips_data_2017$Tip_2)) {
    if(grepl(word, tips_data_2017$Tip_2[i], fixed = TRUE) == TRUE) {
      count2_2017 = count2_2017 + 1
    }
  }
}

#Tip 3
count3_2017 = 0
for(word in words) {
  for(i in 1:length(tips_data_2017$Tip_3)) {
    if(grepl(word, tips_data_2017$Tip_3[i], fixed = TRUE) == TRUE) {
      count3_2017 = count3_2017 + 1
    }
  }
}

#Other
countO_2017 = 0
for(word in words) {
  for(i in 1:length(tips_data_2017$Other)) {
    if(grepl(word, tips_data_2017$Other[i], fixed = TRUE) == TRUE) {
      countO_2017 = countO_2017 + 1
    }
  }
}


#total social word count for 2021
social_words_2017 = count1_2017 + count2_2017 + count3_2017 + countO_2017
#Number of obs that are not NA in 2022
total_tips_2017 = sum(!is.na(tips_data_2017))
#Percent socially relevant tips
percent_social_2017 = social_words_2017 / total_tips_2017
percent_social_2017

#-----------------------------------------------------------------------

#Search 2016 data for words "Social", "Friend", and "Friends"

#Tip1
words = c("friend", "friends", "social")
count1_2016 = 0
for(word in words) {
  for(i in 1:length(tips_data_2016$Tip_1)) {
    if(grepl(word, tips_data_2016$Tip_1[i], fixed = TRUE) == TRUE) {
      count1_2016 = count1_2016 + 1
    }
  }
}

#Tip 2
count2_2016 = 0
for(word in words) {
  for(i in 1:length(tips_data_2016$Tip_2)) {
    if(grepl(word, tips_data_2016$Tip_2[i], fixed = TRUE) == TRUE) {
      count2_2016 = count2_2016 + 1
    }
  }
}

#Tip 3
count3_2016= 0
for(word in words) {
  for(i in 1:length(tips_data_2016$Tip_3)) {
    if(grepl(word, tips_data_2016$Tip_3[i], fixed = TRUE) == TRUE) {
      count3_2016 = count3_2016+ 1
    }
  }
}

#Other
countO_2016 = 0
for(word in words) {
  for(i in 1:length(tips_data_2016$Other)) {
    if(grepl(word, tips_data_2016$Other[i], fixed = TRUE) == TRUE) {
      countO_2016 = countO_2016 + 1
    }
  }
}


#total social word count for 2016
social_words_2016 = count1_2016 + count2_2016 + count3_2016 + countO_2016
#Number of obs that are not NA in 2022
total_tips_2016 = sum(!is.na(tips_data_2016))
#Percent socially relevant tips
percent_social_2016 = social_words_2016 / total_tips_2016
percent_social_2016


#-----------------------------------------------------------------------------

social_vect_all = c(percent_social_2016, percent_social_2017, percent_social_2018, percent_social_2019, percent_social_2020, percent_social_2021, percent_social_2022)

barplot(social_vect_all, col = c(rep("black", 6), "pink"), ylim = c(0, 1), ylab = "Percentage of Tips",
        xlab = "Year", names.arg = c("2016", "2017", "2018", "2019", "2020", "2021", "2022"), main = "Percentage of Tips Containing Social Words")

#Build visualization just comparing 2016 to 2022
social_vect = c(percent_social_2016, percent_social_2022)
barplot(social_vect, col = c("#a1e9f0", "#d9b1f0"), ylim = c(0, 1), ylab = "Percentage of Tips",
        xlab = "Year", names.arg = c("2016", "2022"), main = "Percentage of Tips Containing Social Words",
        sub = "(Words examined: friend, friends, social)")


#Using GGPLOT

#create a data frame
social_vect_all = 100*c(percent_social_2016, percent_social_2017, percent_social_2018, percent_social_2019, percent_social_2020, percent_social_2021, percent_social_2022)
years = c("2016", "2017", "2018", "2019", "2020", "2021", "2022")
sv_df = data.frame(Year = years, Percent = social_vect_all)

#Plot
ggplot(sv_df, aes(x=Year, y=Percent, fill=factor(ifelse(Year=="2022", "Highlighted", "Normal")))) +
  geom_bar(stat = "identity") +
  scale_fill_manual(name = "2022", values=c("red","grey50")) +
  ylab("Percentage (%)") +
  theme_classic() +
  ylim(0, 100) +
  ggtitle("Percentage of Socialization References in Tips Over Time",
          subtitle = "Words Examined: Friend, Friends, Social, Fun") +
  theme(legend.position = "none",
    plot.title = element_text(color="black", size=10, face="bold", hjust = 0.5),
    axis.title.x = element_text(color="black", size=10, face="bold"),
    axis.title.y = element_text(color="black", size=10, face="bold"),
    plot.subtitle = element_text(color = "black", size = 9, hjust = 0.5, face = "italic"))

mean(c(percent_social_2016, percent_social_2017, percent_social_2018, percent_social_2019, percent_social_2020, percent_social_2021))
percent_social_2022
