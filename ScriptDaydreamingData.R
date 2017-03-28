library(irr)
#Add data for participant's perceived daydreaming experience
icc_2 <- read.csv("icc_2.csv")
#Run ICC analysis for participant's perceived daydreaming experience
icc(icc_2, model="twoway", type="agreement")
#Add data for cohesiveness of participant’s thoughts
icc_3a <- read.csv("icc_3a.csv")
#Run icc for cohesiveness of participant’s thoughts
icc(icc_3a, model="twoway", type="agreement")
#Add data for positive tone
icc_4 <- read.csv("icc_4.csv")
#Run data for positive tone
icc(icc_4, model="twoway", type="agreement")
#Add data for thought count
icc_7 <- read.csv("icc_7.csv")
#Run analysis for thought count
icc(icc_7, model="twoway", type="agreement")
#Add data for cohesiveness of identified daydreams
icc_3b <- read.csv("icc_3b.csv")
#Run analysis for cohesiveness of identified daydreams
icc(icc_3b, model="twoway", type="agreement")
#Add data for negative tone
icc_5 <- read.csv("icc_5.csv")
#Run analysis for negative tone
icc(icc_5, model="twoway", type="agreement")
#Add data for social aspects
icc_6 <- read.csv("icc_6.csv")
#Run analysis for social aspects
icc(icc_6, model="twoway", type="agreement")

