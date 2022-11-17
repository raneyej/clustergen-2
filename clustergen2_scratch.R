library(clusterGeneration)
library(tidyverse)
library(ggplot2)

genRandomClust(3, sepVal = 0.01, numNonNoisy = 2, numNoisy = 0, numReplicate = 1, fileName = "run1") #generate 3 clusters with a separation value of 0.01

run1_dat <- read.delim("/Users/emilyraney/Documents/clustergen2/clustergen-2/run1_1.dat", sep = " ") #read in .dat file
head(run1_dat)

run1_mem <- read.delim("/Users/emilyraney/Documents/clustergen2/clustergen-2/run1_1.mem", header = FALSE, sep = " ", col.names = "cluster") #read in .mem file; when header is set to TRUE as default, the first row of data is read as the header 
head(run1_mem)

run1_comb <- cbind(run1_dat, run1_mem) #combine .dat and .mem files into one dataframe
head(run1_comb)
class(run1_comb)

run1_plot <- ggplot(run1_comb, aes(x = x1, y = x2, color = as.factor(cluster))) +geom_point() +scale_color_manual(
  values = c("blueviolet", "deeppink1", "orchid1")) + labs(title = "3 clusters, sepVal = 0.01", color = "Cluster") + xlab("Variable 1") + ylab("Variable 2")
run1_plot
