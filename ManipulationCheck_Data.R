#Manipulation Check
#Add data
library(tidyverse)
relaxed.aroused.data <- read_csv("relaxed_aroused_data.csv")
#Convert categorical variable into factor
relaxed.aroused.data$Group <- as.factor(relaxed.aroused.data$Group)
levels(relaxed.aroused.data$Group) <- list("Control"=0, "Self-Hypnosis"=1)
#Descriptive statistics
#Relaxed as dependent variable
psych::describeBy(relaxed.aroused.data$Relaxed,group=relaxed.aroused.data$Group)
#Aroused as dependent variable
psych::describeBy(relaxed.aroused.data$Aroused,group=relaxed.aroused.data$Group)
#Effect size with confidence interval
control.group.rows <- relaxed.aroused.data %>% filter(Group=="Control")
exp.group.rows <- relaxed.aroused.data %>% filter(Group=="Self-Hypnosis")
#Remove NA values in data
control.group.rows1 <- na.omit(control.group.rows)
exp.group.rows1<-na.omit(exp.group.rows)
#Relaxed effect size
d.relaxed <- smd(Group.1=exp.group.rows1$Relaxed, Group.2=control.group.rows1$Relaxed, Unbiased=TRUE)
print(d.relaxed)
#Relaxed confidence interval
ci.smd(smd=d.relaxed, n.1=length(exp.group.rows1$Relaxed), n.2=length(control.group.rows1$Relaxed))
#Aroused effect size
d.aroused <- smd(Group.1=exp.group.rows1$Aroused, Group.2=control.group.rows1$Aroused, Unbiased=TRUE)
print(d.aroused)
#Aroused confidence interval
ci.smd(smd=d.aroused, n.1=length(exp.group.rows1$Aroused), n.2=length(control.group.rows1$Aroused))




