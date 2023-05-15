library(wordcloud)
library(RColorBrewer)
library(wordcloud2)
library(corpus)
library(tm)
library(tidyverse)

victims <- Data_video_titles$Victim_des[!Data_video_titles$Victim_des %in% "no"]
perpetrators <- Data_video_titles$Perp_des[!Data_video_titles$Perp_des %in% "no"]
title <- Data_video_titles$Title

vector_corpus <- corpus(VectorSource(victims))

wordcloud(words = victims)
wordcloud(words = perpetrators)



# Perpetrator wordcloud
wordcloud(words = names(table(perpetrators)), freq = as.numeric(table(perpetrators)), min.freq = 1, scale=c(1.2,0.4), random.order=FALSE, rot.per=0.45,colors= c("skyblue4", "darkolivegreen4", "red3"))


# Victims wordcloud
wordcloud(words = victims, min.freq = 1, scale=c(4,0.3), max.words=300, random.order=FALSE, rot.per=0.35,colors=brewer.pal(8, "Dark2"))

# Crimes wordcloud
Crimes <- Data_video_titles$Case_type[!Data_video_titles$Case_type %in% "no"]
crimes_description <- Data_video_titles$Case_des[!Data_video_titles$Case_des %in% "no"]

# crimes
wordcloud(words = names(table(Crimes)), freq = as.numeric(table(Crimes)), min.freq = 1, scale=c(2.6,0.7), random.order=FALSE, rot.per=0.45,colors= c("deepskyblue4", "darkolivegreen", "red3"))

#crimes des
wordcloud(words = names(table(crimes_description)), freq = as.numeric(table(crimes_description)), min.freq = 1, scale=c(0.9,0.7), random.order=FALSE, rot.per=0.45,colors= c("deepskyblue4", "darkolivegreen", "red3"))
