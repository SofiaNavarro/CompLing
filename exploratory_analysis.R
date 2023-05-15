library(funModeling)
library(tidyverse) 
library(Hmisc)


# Overview of victim mentions
ggplot(data=Data_video_titles) + theme_bw() +
  geom_histogram(aes(x=Victim_mention, fill=Victim_mention), stat="count") + 
  scale_fill_manual(values=c("firebrick2", "forestgreen")) + 
  labs(y= "Count", x = "Is the victim mentioned?") + 
  theme(legend.title = element_blank(), legend.position='none')
  

# Is the victim's name mentioned?
ggplot(data=Data_video_titles) + theme_bw() +
  geom_histogram(aes(x=Victim_mention_name, fill=Victim_mention_name), stat="count") + 
  scale_fill_manual(values=c("firebrick2", "forestgreen")) + 
  labs(y= "Count", x = "Is the victim's name mentioned?") + 
  theme(legend.title = element_blank(), legend.position='none')


# Overview of perpetrator mentions
ggplot(data=Data_video_titles) + theme_bw() +
  geom_histogram(aes(x=Perp_mention, fill=Perp_mention), stat="count") + 
  scale_fill_manual(values=c("firebrick2", "forestgreen")) + 
  labs(y= "Count", x = "Is the perpetrator mentioned?") + 
  theme(legend.title = element_blank(), legend.position='none')


# Perp name mention
ggplot(data=Data_video_titles) + theme_bw() +
  geom_histogram(aes(x=Perp_mention_name, fill=Perp_mention_name), stat="count") + 
  scale_fill_manual(values=c("firebrick2", "forestgreen")) + 
  labs(y= "Count", x = "Is the perpetrator's name mentioned?") + 
  theme(legend.title = element_blank(), legend.position='none')




