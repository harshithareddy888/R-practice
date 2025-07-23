install.packages("Tmisc")
library(Tmisc)
data(quartet)
View(quartet)

quartet %>%
  group_by(set) %>%
  summarize(mean(x),sd(x),mean(y),sd(y),cor(x,y)) 
#cor -correlation shows how strong the relation btw two variables is
#Based on the summaries we created with our statistical measures, these datasets are identical, but sometimes just looking at the summarized data can be misleading. Visualization can help us understand if the data is identical or not
#A simple grap plot

ggplot(quartet,aes(x,y))+geom_point()+geom_smooth(method = lm,se=FALSE)+facet_wrap(~set)

#The datasauRus creates plots with the Anscombe data in different shapes. 
install.packages('datasauRus')
library(datasauRus)

#chart
ggplot(datasaurus_dozen,aes(x=x,y=y,colour=dataset))+geom_point()+theme_void()+theme(legend.position = "none")+facet_wrap(~dataset,ncol=3)  
