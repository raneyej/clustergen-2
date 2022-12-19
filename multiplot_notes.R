library(clusterGeneration)
library(tidyverse)
library(ggplot2)
library(patchwork)


clustPanelPlot <- function(clustNum = 5){
run01 <- genRandomClust(clustNum, sepVal = -0.99, numNonNoisy = 2, numReplicate = 1, fileName = "run01")

#generate 5 clusters of equal size with a separation value of -0.99 and two non-noisy variables 

dat01 <- run01[3]
mem01 <- run01[4]

#assign.dat and .mem files generated to data objects in R to avoid having to read files in from local machine

d01 <- as.data.frame(dat01)
m01 <- as.data.frame(mem01)

#transform objects into data frames to bind them 

bind01 <- cbind(d01, m01)

#cbind .dat and .mem objects into one dataframe 

colnames(bind01) <- c("V1", "V2", "cluster")

#change column names of dataframe 


run02 <- genRandomClust(clustNum, sepVal = -0.2, numNonNoisy = 2, numReplicate = 1, fileName = "run02")

dat02 <- run02[3]
mem02 <- run02[4]

d02 <- as.data.frame(dat02)
m02 <- as.data.frame(mem02)

bind02 <- cbind(d02, m02)
colnames(bind02) <- c("V1", "V2", "cluster")


run03 <- genRandomClust(clustNum, sepVal = 0.2, numNonNoisy = 2, numReplicate = 1, fileName = "run03")

dat03 <- run03[3]
mem03 <- run03[4]

d03 <- as.data.frame(dat03)
m03 <- as.data.frame(mem03)

bind03 <- cbind(d03, m03)
colnames(bind03) <- c("V1", "V2", "cluster")


run04 <- genRandomClust(clustNum, sepVal = 0.99, numNonNoisy = 2, numReplicate = 1, fileName = "run04")

dat04 <- run04[3]
mem04 <- run04[4]

d04 <- as.data.frame(dat04)
m04 <- as.data.frame(mem04)

bind04 <- cbind(d04, m04)
colnames(bind04) <- c("V1", "V2", "cluster")


plot01 <- ggplot(bind01, aes(x = V1, y = V2, color = as.factor(cluster))) +
  geom_point() + 
  scale_color_manual(values = c("blueviolet", "deeppink1", "orchid1", "mediumpurple1", "violetred")) +
  labs(title = "5 clusters, sepVal = -0.99", color = "Cluster") + xlab("Variable 1") + ylab("Variable 2")
plot01

#plot the results from run01 


plot02 <- ggplot(bind02, aes(x = V1, y = V2, color = as.factor(cluster))) +
  geom_point() + 
  scale_color_manual(values = c("blueviolet", "deeppink1", "orchid1", "mediumpurple1", "violetred")) +
  labs(title = "5 clusters, sepVal = -0.2", color = "Cluster") + xlab("Variable 1") + ylab("Variable 2")
plot02


plot03 <- ggplot(bind03, aes(x = V1, y = V2, color = as.factor(cluster))) +
  geom_point() + 
  scale_color_manual(values = c("blueviolet", "deeppink1", "orchid1", "mediumpurple1", "violetred")) +
  labs(title = "5 clusters, sepVal = 0.2", color = "Cluster") + xlab("Variable 1") + ylab("Variable 2")
plot03

plot04 <- ggplot(bind04, aes(x = V1, y = V2, color = as.factor(cluster))) +
  geom_point() + 
  scale_color_manual(values = c("blueviolet", "deeppink1", "orchid1", "mediumpurple1", "violetred")) +
  labs(title = "5 clusters, sepVal = 0.99", color = "Cluster") + xlab("Variable 1") + ylab("Variable 2")
plot04


(plot01|plot02)/(plot03|plot04)
}

#this function is only capable of running a maximum of five clusters right now due to the plotting language. I'm going to fix this in the future. 

clustPanelPlot()
