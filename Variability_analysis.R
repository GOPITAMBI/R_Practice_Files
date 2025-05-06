#Install Package if not available
#install.packages("variability")
library(variability)

#Read data from a CSV file into a dataframe
Data <- read.csv("D:/desktop/Agriculture/GxE_Analysis/Gen_data.csv")

#Perform genetic variability analysis (genetic, phenotypic, and environmental variance components)
gen.var(Data[3:9], Data$Genotypes, Data$Replication)

#Remove the 6th column (irrelevant for correlation/path analysis)
Data1 <- Data[-6]

#Compute genotypic correlation
geno.corr(Data1[3:8], Data1$Genotypes, Data1$Replication)

#Compute phenotypic correlation
pheno.corr(Data1[3:8], Data1$Genotypes, Data1$Replication)

#Perform ANCOVA (analysis of covariance)
ancova(Data1[3:8], Data1$Genotypes, Data1$Replication)

#Conduct path coefficient analysis to determine direct and indirect effects of independent traits (3 to 7) on the dependent trait (column 8)
geno.path(Data1[8], Data1[3:7], Data1$Genotypes, Data1$Replication)
