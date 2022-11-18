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



genRandomClust(5, sepVal = 0.01, numNonNoisy = 2, numNoisy = 0, numReplicate = 1, fileName = "run2")

run2_dat <- read.delim("/Users/emilyraney/Documents/clustergen2/clustergen-2/run2_1.dat", sep = " ")
run2_mem <- read.delim("/Users/emilyraney/Documents/clustergen2/clustergen-2/run2_1.mem", header = FALSE, sep = " ", col.names = "cluster")

run2_comb <- cbind(run2_dat, run2_mem)

run2_plot <- ggplot(run2_comb, aes(x = x1, y = x2, color = as.factor(cluster))) +geom_point() +scale_color_manual(
  values = c("blueviolet", "deeppink1", "orchid1", "mediumpurple1", "violetred")) + labs(title = "5 clusters, sepVal = 0.01", color = "Cluster") + xlab("Variable 1") + ylab("Variable 2")
run2_plot



genRandomClust(5, sepVal = 0.25, numNonNoisy = 2, numReplicate = 1, fileName = "run3")

run3_dat <- read.delim("/Users/emilyraney/Documents/clustergen2/clustergen-2/run3_1.dat", sep = " ")
run3_mem <- read.delim("/Users/emilyraney/Documents/clustergen2/clustergen-2/run3_1.mem", header = FALSE, sep = " ", col.names = "cluster")

run3_comb <- cbind(run3_dat, run3_mem)

run3_plot <- ggplot(run3_comb, aes(x = x1, y = x2, color = as.factor(cluster))) +geom_point() +scale_color_manual(
  values = c("blueviolet", "deeppink1", "orchid1", "mediumpurple1", "violetred")) + labs(title = "5 clusters, sepVal = 0.25", color = "Cluster") + xlab("Variable 1") + ylab("Variable 2")
run3_plot


genRandomClust(5, sepVal = 0.5, numNonNoisy = 2, numReplicate = 1, fileName = "run4")

run4_dat <- read.delim("/Users/emilyraney/Documents/clustergen2/clustergen-2/run4_1.dat", sep = " ")
run4_mem <- read.delim("/Users/emilyraney/Documents/clustergen2/clustergen-2/run4_1.mem", header = FALSE, sep = " ", col.names = "cluster")

run4_comb <- cbind(run4_dat, run4_mem)

run4_plot <- ggplot(run4_comb, aes(x = x1, y = x2, color = as.factor(cluster))) +geom_point() +scale_color_manual(
  values = c("blueviolet", "deeppink1", "orchid1", "mediumpurple1", "violetred")) + labs(title = "5 clusters, sepVal = 0.50", color = "Cluster") + xlab("Variable 1") + ylab("Variable 2")
run4_plot


genRandomClust(5, sepVal = 0.75, numNonNoisy = 2, numReplicate = 1, fileName = "run5")

run5_dat <- read.delim("/Users/emilyraney/Documents/clustergen2/clustergen-2/run5_1.dat", sep = " ")
run5_mem <- read.delim("/Users/emilyraney/Documents/clustergen2/clustergen-2/run5_1.mem", header = FALSE, sep = " ", col.names = "cluster")

run5_comb <- cbind(run5_dat, run5_mem)

run5_plot <- ggplot(run5_comb, aes(x = x1, y = x2, color = as.factor(cluster))) +geom_point() +scale_color_manual(
  values = c("blueviolet", "deeppink1", "orchid1", "mediumpurple1", "violetred")) + labs(title = "5 clusters, sepVal = 0.75", color = "Cluster") + xlab("Variable 1") + ylab("Variable 2")
run5_plot


genRandomClust(5, sepVal = 0.99, numNonNoisy = 2, numReplicate = 1, fileName = "run6")

run6_dat <- read.delim("/Users/emilyraney/Documents/clustergen2/clustergen-2/run6_1.dat", sep = " ")
run6_mem <- read.delim("/Users/emilyraney/Documents/clustergen2/clustergen-2/run6_1.mem", header = FALSE, sep = " ", col.names = "cluster")

run6_comb <- cbind(run6_dat, run6_mem)

run6_plot <- ggplot(run6_comb, aes(x = x1, y = x2, color = as.factor(cluster))) +geom_point() +scale_color_manual(
  values = c("blueviolet", "deeppink1", "orchid1", "mediumpurple1", "violetred")) + labs(title = "5 clusters, sepVal = 0.99", color = "Cluster") + xlab("Variable 1") + ylab("Variable 2")
run6_plot



genRandomClust(5, sepVal = -0.01, numNonNoisy = 2, numReplicate = 1, fileName = "run7")

run7_dat <- read.delim("/Users/emilyraney/Documents/clustergen2/clustergen-2/run7_1.dat", sep = " ")
run7_mem <- read.delim("/Users/emilyraney/Documents/clustergen2/clustergen-2/run7_1.mem", header = FALSE, sep = " ", col.names = "cluster")

run7_comb <- cbind(run7_dat, run7_mem)

run7_plot <- ggplot(run7_comb, aes(x = x1, y = x2, color = as.factor(cluster))) +geom_point() +scale_color_manual(
  values = c("blueviolet", "deeppink1", "orchid1", "mediumpurple1", "violetred")) + labs(title = "5 clusters, sepVal = -0.01", color = "Cluster") + xlab("Variable 1") + ylab("Variable 2")
run7_plot


genRandomClust(5, sepVal = -0.25, numNonNoisy = 2, numReplicate = 1, fileName = "run8")

run8_dat <- read.delim("/Users/emilyraney/Documents/clustergen2/clustergen-2/run8_1.dat", sep = " ")
run8_mem <- read.delim("/Users/emilyraney/Documents/clustergen2/clustergen-2/run8_1.mem", header = FALSE, sep = " ", col.names = "cluster")

run8_comb <- cbind(run8_dat, run8_mem)

run8_plot <- ggplot(run8_comb, aes(x = x1, y = x2, color = as.factor(cluster))) +geom_point() +scale_color_manual(
  values = c("blueviolet", "deeppink1", "orchid1", "mediumpurple1", "violetred")) + labs(title = "5 clusters, sepVal = -0.25", color = "Cluster") + xlab("Variable 1") + ylab("Variable 2")
run8_plot


genRandomClust(5, sepVal =  -0.5, numNonNoisy = 2, numReplicate = 1, fileName = "run9")

run9_dat <- read.delim("/Users/emilyraney/Documents/clustergen2/clustergen-2/run9_1.dat", sep = " ")
run9_mem <- read.delim("/Users/emilyraney/Documents/clustergen2/clustergen-2/run9_1.mem", header = FALSE, sep = " ", col.names = "cluster")

run9_comb <- cbind(run9_dat, run9_mem)

run9_plot <- ggplot(run9_comb, aes(x = x1, y = x2, color = as.factor(cluster))) +geom_point() +scale_color_manual(
  values = c("blueviolet", "deeppink1", "orchid1", "mediumpurple1", "violetred")) + labs(title = "5 clusters, sepVal = -0.50", color = "Cluster") + xlab("Variable 1") + ylab("Variable 2")
run9_plot


genRandomClust(5, sepVal =  -0.75, numNonNoisy = 2, numReplicate = 1, fileName = "run10")

run10_dat <- read.delim("/Users/emilyraney/Documents/clustergen2/clustergen-2/run10_1.dat", sep = " ")
run10_mem <- read.delim("/Users/emilyraney/Documents/clustergen2/clustergen-2/run10_1.mem", header = FALSE, sep = " ", col.names = "cluster")

run10_comb <- cbind(run10_dat, run10_mem)

run10_plot <- ggplot(run10_comb, aes(x = x1, y = x2, color = as.factor(cluster))) +geom_point() +scale_color_manual(
  values = c("blueviolet", "deeppink1", "orchid1", "mediumpurple1", "violetred")) + labs(title = "5 clusters, sepVal = -0.75", color = "Cluster") + xlab("Variable 1") + ylab("Variable 2")
run10_plot


genRandomClust(5, sepVal =  -0.99, numNonNoisy = 2, numReplicate = 1, fileName = "run11")

run11_dat <- read.delim("/Users/emilyraney/Documents/clustergen2/clustergen-2/run11_1.dat", sep = " ")
run11_mem <- read.delim("/Users/emilyraney/Documents/clustergen2/clustergen-2/run11_1.mem", header = FALSE, sep = " ", col.names = "cluster")

run11_comb <- cbind(run11_dat, run11_mem)

run11_plot <- ggplot(run11_comb, aes(x = x1, y = x2, color = as.factor(cluster))) +geom_point() +scale_color_manual(
  values = c("blueviolet", "deeppink1", "orchid1", "mediumpurple1", "violetred")) + labs(title = "5 clusters, sepVal = -0.99", color = "Cluster") + xlab("Variable 1") + ylab("Variable 2")
run11_plot




genRandomClust(5, sepVal = 0.01, numNonNoisy = 2, clustszind = 2, rangeN = c(10, 50), numReplicate = 1, fileName = "run12")

run12_dat <- read.delim("/Users/emilyraney/Documents/clustergen2/clustergen-2/run12_1.dat", sep = " ")
run12_mem <- read.delim("/Users/emilyraney/Documents/clustergen2/clustergen-2/run12_1.mem", header = FALSE, sep = " ", col.names = "cluster")

run12_comb <- cbind(run12_dat, run12_mem)

run12_plot <- ggplot(run12_comb, aes(x = x1, y = x2, color = as.factor(cluster))) +geom_point() +scale_color_manual(
  values = c("blueviolet", "deeppink1", "orchid1", "mediumpurple1", "violetred")) + labs(title = "5 clusters, unequal size, sepVal = 0.01", color = "Cluster") + xlab("Variable 1") + ylab("Variable 2")
run12_plot


genRandomClust(5, sepVal = 0.01, numNonNoisy = 2, clustszind = 3, clustSizes = c(3, 9, 12, 18, 50), numReplicate = 1, fileName = "run13")

run13_dat <- read.delim("/Users/emilyraney/Documents/clustergen2/clustergen-2/run13_1.dat", sep = " ")
run13_mem <- read.delim("/Users/emilyraney/Documents/clustergen2/clustergen-2/run13_1.mem", header = FALSE, sep = " ", col.names = "cluster")

run13_comb <- cbind(run13_dat, run13_mem)

run13_plot <- ggplot(run13_comb, aes(x = x1, y = x2, color = as.factor(cluster))) +geom_point() +scale_color_manual(
  values = c("blueviolet", "deeppink1", "orchid1", "mediumpurple1", "violetred")) + labs(title = "5 clusters, unequal size, sepVal = 0.01", color = "Cluster") + xlab("Variable 1") + ylab("Variable 2")
run13_plot


genRandomClust(5, )