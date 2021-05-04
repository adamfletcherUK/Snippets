##### Title #####
## Import and Annotation of Illumina 450k Array data ##
## Adam Fletcher ##
## 31 July 2018 ##

## Version 1.0 ##

## Changelog:
## v1.0 update- merging of multiple scripts into one

## Requirements:
## Illumina 450k manifest (http://emea.support.illumina.com/downloads/infinium_humanmethylation450_product_files.html)


##### Prerequisites #####
## Loading/ Installing Packages

requiredPackages <- c("tidyverse", "RColorBrewer", "minfi")

ipak <- function(pkg){
  new.pkg <- pkg[!(pkg %in% installed.packages()[, "Package"])]
  if (length(new.pkg))
    install.packages(new.pkg, dependencies = TRUE)
  sapply(pkg, require, character.only = TRUE)
}
ipak(requiredPackages)

rm(requiredPackages)

source("https://bioconductor.org/biocLite.R")
biocLite("minfi")
biocLite("GenomicRanges")

library(minfi)
library(GenomicRanges)


##### Extract Data From 450k #####
## Extract Data From S4 Object and export as .csv file
load("dive.norm.rda")

rowRanges <- as.data.frame(dive.norm@rowRanges)
write.csv(rowRanges, "Row_Ranges.csv")

Beta_values <- getBeta(dive.norm)
write.csv(Beta_values, "beta_values.csv")

M_values <- getM(dive.norm)
write.csv(M_values, "M_values.csv")

copy_number <- getCN(dive.norm)
write.csv(copy_number, "copy_number.csv")



##### Anotate Beta Values To Genome #####

#Read and process the Illumina 450k Manifest
Illumina.450k <- read_csv("HumanMethylation450_15017482_v1-2.csv")
Illumina.450k <- Illumina.450k[-c(1,2,3,4,5,6),] #, at the end selects row. Else it removes columns
Illumina.Colnames <- Illumina.450k[1,]
names(Illumina.450k) <- Illumina.Colnames
Illumina.450k <- Illumina.450k[-1,]
names(Illumina.450k)[1] <- "CpG Index"

#Read and process the genome range data from MSKCC, Merge with Illumina data
rowRanges <- read_csv("Row_Ranges.csv")
names(rowRanges)[1] <- "CpG Index"
annotated.Row_Ranges <- merge(rowRanges, Illumina.450k, by= "CpG Index")
#rm(Illumina.450k, Illumina.Colnames, rowRanges) #Cleanup the environment

#Merge annotated genomic ranges with B-values
Beta_values <- read.csv("beta_values.csv")
names(Beta_values)[1] <- "CpG Index"
annotated.beta_values <- merge(annotated.Row_Ranges, Beta_values, by= "CpG Index")
annotated.beta_values <- annotated.beta_values[-c(2, 5, 6, 7, 12, 13, 14, 16, 20)]
names(annotated.beta_values)[24] <- "CDX1"
names(annotated.beta_values)[25] <- "CDX3"
names(annotated.beta_values)[26] <- "CDX4"
names(annotated.beta_values)[27] <- "CDX3P"
names(annotated.beta_values)[28] <- "CDX8"
names(annotated.beta_values)[29] <- "CDX8P"
names(annotated.beta_values)[30] <- "CDX7"
names(annotated.beta_values)[31] <- "CDX10"
names(annotated.beta_values)[32] <- "CDX12"
names(annotated.beta_values)[33] <- "CDX13"
names(annotated.beta_values)[34] <- "CDX14P"
names(annotated.beta_values)[35] <- "CDX15P"
write.csv(annotated.beta_values, "OUTPUT_annotated_beta.csv")
#rm(annotated.Row_Ranges, Beta_values)


###### Extract CDX8 and CDX8P annotated values #####
annotated.CDX88P.beta <- annotated.beta_values
annotated.CDX88P.beta <- annotated.CDX88P.beta[-c(24, 25, 26, 27, 30, 31, 32,33, 34, 35)]


#Change CHR from 1 to 01 etc. for presentation
# CURRENTLY DOESN'T WORK!!
# for (i in 1:nrow(annotated.CDX88P.beta)){
#   if (annotated.CDX88P.beta$CHR[i] == 1){
#     annotated.CDX88P.beta$CHR <- "01"}
#   if (annotated.CDX88P.beta$CHR[i] == 2){
#     annotated.CDX88P.beta$CHR <- "02"}
#   if (annotated.CDX88P.beta$CHR[i] == 3){
#     annotated.CDX88P.beta$CHR <- "03"}
#   if (annotated.CDX88P.beta$CHR[i] == 4){
#     annotated.CDX88P.beta$CHR <- "04"}
#   if (annotated.CDX88P.beta$CHR[i] == 5){
#     annotated.CDX88P.beta$CHR <- "05"}
#   if (annotated.CDX88P.beta$CHR[i] == 6){
#     annotated.CDX88P.beta$CHR <- "06"}
#   if (annotated.CDX88P.beta$CHR[i] == 7){
#     annotated.CDX88P.beta$CHR <- "07"}
#   if (annotated.CDX88P.beta$CHR[i] == 8){
#     annotated.CDX88P.beta$CHR <- "08"}
#   if (annotated.CDX88P.beta$CHR[i] == 9){
#     annotated.CDX88P.beta$CHR <- "09"}
# }

#Calculate change in B values (CDX8P - CDX8)
annotated.CDX88P.beta$B_Change <- annotated.CDX88P.beta$CDX8P_B - annotated.CDX88P.beta$CDX8_B