#Read in packages and install libs
install.packages("readxl")
install.packages("stringr")
library("readxl")
library("stringr")
setwd("/Users/mvonsosen/Documents/MSAR")

#Read in file
tips_data_2022 <- read_excel("MSA_Tips.xlsx", sheet = 1)
tips_data_2016 <- read_excel("MSA_Tips.xlsx", sheet = 7)

#Search 2022 data for words "Social", "Friend", and "Friends"

#Tip1
words = c("friend", "friends", "social")
count1_2022 = 0
for(word in words) {
  for(i in 1:length(tips_data_2022$Tip_1)) {
    if(grepl(word, tips_data_2022$Tip_1[i], fixed = TRUE) == TRUE) {
      count1_2022 = count1_2022 + 1
    }
  }
}
#
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


#total social word count for 2022
social_words_2016 = count1_2016 + count2_2016 + count3_2016 + countO_2016
#Number of obs that are not NA in 2022
total_tips_2016 = sum(!is.na(tips_data_2016))
#Percent socially relevant tips
percent_social_2016 = social_words_2016 / total_tips_2016
percent_social_2016


#-----------------------------------------------------------------------------


#Build visualization
social_vect = c(percent_social_2016, percent_social_2022)
barplot(social_vect, col = c("#a1e9f0", "#d9b1f0"), ylim = c(0, 1), ylab = "Percentage of Tips",
        xlab = "Year", names.arg = c("2016", "2022"), main = "Percentage of Tips Containing Social Words",
        sub = "(Words examined: friend, friends, social)")
