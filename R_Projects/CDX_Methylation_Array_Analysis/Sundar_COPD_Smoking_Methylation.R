##### Title #####
## Import Illumina 450k Array data from Smokers, Non-Smokers and COPD Patients ##
## Adam Fletcher ##
## 31 July 2018 ##

## Version 0.1 ##

## References:
## https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5391602/
## Dataset: https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE92511

## Requirements:
## Illumina 450k manifest (http://emea.support.illumina.com/downloads/infinium_humanmethylation450_product_files.html)


##### Prerequisites #####
## Loading/ Installing Packages

requiredPackages <- c("tidyverse", "RColorBrewer", "minfi", "rvest")

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


# 
# # Import Data
# Smoking_Meth.Raw <- as.matrix(read.delim("GSE92511_unnormalized_Methylation_data.txt", sep = "\t"))
# NS1.RGchan <- RGChannelSet(Green = new(Smoking_Meth.Raw[,"NS.1.Signal_A"]), 
#                            Red = new(Smoking_Meth.Raw[,"NS.1.Signal_B"]), 
#                                      annotation = new(Smoking_Meth.Raw[,"TargetID"]))



## Scrape Beta Values from Webpage
## Update later to a function with a loop as only GSM and ID are changing
## Use https://www.r-bloggers.com/creating-a-gilmore-girls-character-network-with-r/ for reference

## IF ERROR OCCURS ABOUT LAZY-LOAD CORRUPTION, RESTART R ##

##### Non Smokers Data Import #####

#NS_1
url <- readLines(
  "https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?view=data&acc=GSM2430978&id=84862&db=GeoDb_blob148")
NS_1 <- as.data.frame(url)
NS_1 <- separate(NS_1, 1, into = c("ID", "B_value", "P_value"), sep = "\t")

#NS_2
url <- readLines(
  "https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?view=data&acc=GSM2430979&id=84863&db=GeoDb_blob148")
NS_2 <- as.data.frame(url)
NS_2 <- separate(NS_2, 1, into = c("ID", "B_value", "P_value"), sep = "\t")

#NS_3
url <- readLines(
  "https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?view=data&acc=GSM2430980&id=84864&db=GeoDb_blob148")
NS_3 <- as.data.frame(url)
NS_3 <- separate(NS_3, 1, into = c("ID", "B_value", "P_value"), sep = "\t")

#NS_4
url <- readLines(
  "https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?view=data&acc=GSM2430981&id=84865&db=GeoDb_blob148")
NS_4 <- as.data.frame(url)
NS_4 <- separate(NS_4, 1, into = c("ID", "B_value", "P_value"), sep = "\t")

#NS_5
url <- readLines(
  "https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?view=data&acc=GSM2430982&id=84866&db=GeoDb_blob148")
NS_5 <- as.data.frame(url)
NS_5 <- separate(NS_5, 1, into = c("ID", "B_value", "P_value"), sep = "\t")

#NS_6
url <- readLines(
  "https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?view=data&acc=GSM2430983&id=84867&db=GeoDb_blob148")
NS_6 <- as.data.frame(url)
NS_6 <- separate(NS_6, 1, into = c("ID", "B_value", "P_value"), sep = "\t")

#NS_7
url <- readLines(
  "https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?view=data&acc=GSM2430984&id=84868&db=GeoDb_blob148")
NS_7 <- as.data.frame(url)
NS_7 <- separate(NS_7, 1, into = c("ID", "B_value", "P_value"), sep = "\t")

#NS_8
url <- readLines(
  "https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?view=data&acc=GSM2430985&id=84869&db=GeoDb_blob148")
NS_8 <- as.data.frame(url)
NS_8 <- separate(NS_8, 1, into = c("ID", "B_value", "P_value"), sep = "\t")

NSmoke_merge <- merge(NS_1, NS_2, by = "ID")
names(NSmoke_merge)[2] <- "NS_1_B"
names(NSmoke_merge)[3] <- "NS_1_P"
names(NSmoke_merge)[4] <- "NS_2_B"
names(NSmoke_merge)[5] <- "NS_2_P"
NSmoke_merge <- merge(NSmoke_merge, NS_3, by = "ID")
names(NSmoke_merge)[6] <- "NS_3_B"
names(NSmoke_merge)[7] <- "NS_3_P"
NSmoke_merge <- merge(NSmoke_merge, NS_4, by = "ID")
names(NSmoke_merge)[8] <- "NS_4_B"
names(NSmoke_merge)[9] <- "NS_4_P"
NSmoke_merge <- merge(NSmoke_merge, NS_5, by = "ID")
names(NSmoke_merge)[10] <- "NS_5_B"
names(NSmoke_merge)[11] <- "NS_5_P"
NSmoke_merge <- merge(NSmoke_merge, NS_6, by = "ID")
names(NSmoke_merge)[12] <- "NS_6_B"
names(NSmoke_merge)[13] <- "NS_6_P"
NSmoke_merge <- merge(NSmoke_merge, NS_7, by = "ID")
names(NSmoke_merge)[14] <- "NS_7_B"
names(NSmoke_merge)[15] <- "NS_7_P"
NSmoke_merge <- merge(NSmoke_merge, NS_8, by = "ID")
names(NSmoke_merge)[16] <- "NS_8_B"
names(NSmoke_merge)[17] <- "NS_8_P"

NSmoke_clean <- NSmoke_merge[-c(1:390654),]
rownames(NSmoke_clean) = NULL
rm("NS_1", "NS_2", "NS_3", "NS_4", "NS_5", "NS_6", "NS_7", "NS_8", "url")

##### Smokers Data Import #####

#S_1
url <- readLines(
  "https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?view=data&acc=GSM2430986&id=84870&db=GeoDb_blob148")
S_1 <- as.data.frame(url)
S_1 <- separate(S_1, 1, into = c("ID", "B_value", "P_value"), sep = "\t")

#S_2
url <- readLines(
  "https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?view=data&acc=GSM2430987&id=84871&db=GeoDb_blob148")
S_2 <- as.data.frame(url)
S_2 <- separate(S_2, 1, into = c("ID", "B_value", "P_value"), sep = "\t")

#S_3
url <- readLines(
  "https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?view=data&acc=GSM2430988&id=84872&db=GeoDb_blob148")
S_3 <- as.data.frame(url)
S_3 <- separate(S_3, 1, into = c("ID", "B_value", "P_value"), sep = "\t")

#S_4
url <- readLines(
  "https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?view=data&acc=GSM2430989&id=84873&db=GeoDb_blob148")
S_4 <- as.data.frame(url)
S_4 <- separate(S_4, 1, into = c("ID", "B_value", "P_value"), sep = "\t")

#S_5
url <- readLines(
  "https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?view=data&acc=GSM2430990&id=84874&db=GeoDb_blob148")
S_5 <- as.data.frame(url)
S_5 <- separate(S_5, 1, into = c("ID", "B_value", "P_value"), sep = "\t")

#S_6
url <- readLines(
  "https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?view=data&acc=GSM2430991&id=84875&db=GeoDb_blob148")
S_6 <- as.data.frame(url)
S_6 <- separate(S_6, 1, into = c("ID", "B_value", "P_value"), sep = "\t")

#S_7
url <- readLines(
  "https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?view=data&acc=GSM2430992&id=84876&db=GeoDb_blob148")
S_7 <- as.data.frame(url)
S_7 <- separate(S_7, 1, into = c("ID", "B_value", "P_value"), sep = "\t")

#S_8
url <- readLines(
  "https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?view=data&acc=GSM2430993&id=84877&db=GeoDb_blob148")
S_8 <- as.data.frame(url)
S_8 <- separate(S_8, 1, into = c("ID", "B_value", "P_value"), sep = "\t")

Smoke_merge <- merge(S_1, S_2, by = "ID")
names(Smoke_merge)[2] <- "S_1_B"
names(Smoke_merge)[3] <- "S_1_P"
names(Smoke_merge)[4] <- "S_2_B"
names(Smoke_merge)[5] <- "S_2_P"
Smoke_merge <- merge(Smoke_merge, S_3, by = "ID")
names(Smoke_merge)[6] <- "S_3_B"
names(Smoke_merge)[7] <- "S_3_P"
Smoke_merge <- merge(Smoke_merge, S_4, by = "ID")
names(Smoke_merge)[8] <- "S_4_B"
names(Smoke_merge)[9] <- "S_4_P"
Smoke_merge <- merge(Smoke_merge, S_5, by = "ID")
names(Smoke_merge)[10] <- "S_5_B"
names(Smoke_merge)[11] <- "S_5_P"
Smoke_merge <- merge(Smoke_merge, S_6, by = "ID")
names(Smoke_merge)[12] <- "S_6_B"
names(Smoke_merge)[13] <- "S_6_P"
Smoke_merge <- merge(Smoke_merge, S_7, by = "ID")
names(Smoke_merge)[14] <- "S_7_B"
names(Smoke_merge)[15] <- "S_7_P"
Smoke_merge <- merge(Smoke_merge, S_8, by = "ID")
names(Smoke_merge)[16] <- "S_8_B"
names(Smoke_merge)[17] <- "S_8_P"

Smoke_clean <- Smoke_merge[-c(1:390654),]
rownames(Smoke_clean) = NULL
rm("S_1", "S_2", "S_3", "S_4", "S_5", "S_6", "S_7", "S_8", "url")

##### COPD Data Import #####

#COPD_1
url <- readLines(
  "https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?view=data&acc=GSM2430994&id=84878&db=GeoDb_blob148")
COPD_1 <- as.data.frame(url)
COPD_1 <- separate(COPD_1, 1, into = c("ID", "B_value", "P_value"), sep = "\t")

#COPD_2
url <- readLines(
  "https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?view=data&acc=GSM2430995&id=84879&db=GeoDb_blob148")
COPD_2 <- as.data.frame(url)
COPD_2 <- separate(COPD_2, 1, into = c("ID", "B_value", "P_value"), sep = "\t")

#COPD_3
url <- readLines(
  "https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?view=data&acc=GSM2430996&id=84880&db=GeoDb_blob148")
COPD_3 <- as.data.frame(url)
COPD_3 <- separate(COPD_3, 1, into = c("ID", "B_value", "P_value"), sep = "\t")

#COPD_4
url <- readLines(
  "https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?view=data&acc=GSM2430997&id=84881&db=GeoDb_blob148")
COPD_4 <- as.data.frame(url)
COPD_4 <- separate(COPD_4, 1, into = c("ID", "B_value", "P_value"), sep = "\t")

#COPD_5
url <- readLines(
  "https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?view=data&acc=GSM2430998&id=84882&db=GeoDb_blob148")
COPD_5 <- as.data.frame(url)
COPD_5 <- separate(COPD_5, 1, into = c("ID", "B_value", "P_value"), sep = "\t")

#COPD_6
url <- readLines(
  "https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?view=data&acc=GSM2430999&id=84883&db=GeoDb_blob148")
COPD_6 <- as.data.frame(url)
COPD_6 <- separate(COPD_6, 1, into = c("ID", "B_value", "P_value"), sep = "\t")

#COPD_7
url <- readLines(
  "https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?view=data&acc=GSM2431000&id=84884&db=GeoDb_blob148")
COPD_7 <- as.data.frame(url)
COPD_7 <- separate(COPD_7, 1, into = c("ID", "B_value", "P_value"), sep = "\t")

#COPD_8
url <- readLines(
  "https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?view=data&acc=GSM2431001&id=84885&db=GeoDb_blob148")
COPD_8 <- as.data.frame(url)
COPD_8 <- separate(COPD_8, 1, into = c("ID", "B_value", "P_value"), sep = "\t")

COPD_merge <- merge(COPD_1, COPD_2, by = "ID")
names(COPD_merge)[2] <- "COPD_1_B"
names(COPD_merge)[3] <- "COPD_1_P"
names(COPD_merge)[4] <- "COPD_2_B"
names(COPD_merge)[5] <- "COPD_2_P"
COPD_merge <- merge(COPD_merge, COPD_3, by = "ID")
names(COPD_merge)[6] <- "COPD_3_B"
names(COPD_merge)[7] <- "COPD_3_P"
COPD_merge <- merge(COPD_merge, COPD_4, by = "ID")
names(COPD_merge)[8] <- "COPD_4_B"
names(COPD_merge)[9] <- "COPD_4_P"
COPD_merge <- merge(COPD_merge, COPD_5, by = "ID")
names(COPD_merge)[10] <- "COPD_5_B"
names(COPD_merge)[11] <- "COPD_5_P"
COPD_merge <- merge(COPD_merge, COPD_6, by = "ID")
names(COPD_merge)[12] <- "COPD_6_B"
names(COPD_merge)[13] <- "COPD_6_P"
COPD_merge <- merge(COPD_merge, COPD_7, by = "ID")
names(COPD_merge)[14] <- "COPD_7_B"
names(COPD_merge)[15] <- "COPD_7_P"
COPD_merge <- merge(COPD_merge, COPD_8, by = "ID")
names(COPD_merge)[16] <- "COPD_8_B"
names(COPD_merge)[17] <- "COPD_8_P"

COPD_clean <- COPD_merge[-c(1:390654),]
rownames(COPD_clean) = NULL
rm("COPD_1", "COPD_2", "COPD_3", "COPD_4", "COPD_5", "COPD_6", "COPD_7", "COPD_8", "url")

##### Data Export #####
write.csv(NSmoke_clean, "OUTPUT_Sundar_NoSmoker.csv")
write.csv(Smoke_clean, "OUTPUT_Sundar_Smoker.csv")
write.csv(COPD_clean, "OUTPUT_Sundar_COPD.csv")

NS_Beta <- NSmoke_clean[c(1,2,4,6,8,10,12,14,16)]
S_Beta <- Smoke_clean[c(1,2,4,6,8,10,12,14,16)]
C_Beta <- COPD_clean[c(1,2,4,6,8,10,12,14,16)]

#Calculate Mean B values: Ignoring NULL values
#a$mean <- rowMeans(a[c('high', 'low')], na.rm=TRUE)

NS_Beta$NS_1_B <- as.numeric(NS_Beta$NS_1_B)
NS_Beta$NS_2_B <- as.numeric(NS_Beta$NS_2_B)
NS_Beta$NS_3_B <- as.numeric(NS_Beta$NS_3_B)
NS_Beta$NS_4_B <- as.numeric(NS_Beta$NS_4_B)
NS_Beta$NS_5_B <- as.numeric(NS_Beta$NS_5_B)
NS_Beta$NS_6_B <- as.numeric(NS_Beta$NS_6_B)
NS_Beta$NS_7_B <- as.numeric(NS_Beta$NS_7_B)
NS_Beta$NS_8_B <- as.numeric(NS_Beta$NS_8_B)
NS_Beta$NS_Mean <- rowMeans(NS_Beta[,2:9], na.rm = TRUE)

S_Beta$S_1_B <- as.numeric(S_Beta$S_1_B)
S_Beta$S_2_B <- as.numeric(S_Beta$S_2_B)
S_Beta$S_3_B <- as.numeric(S_Beta$S_3_B)
S_Beta$S_4_B <- as.numeric(S_Beta$S_4_B)
S_Beta$S_5_B <- as.numeric(S_Beta$S_5_B)
S_Beta$S_6_B <- as.numeric(S_Beta$S_6_B)
S_Beta$S_7_B <- as.numeric(S_Beta$S_7_B)
S_Beta$S_8_B <- as.numeric(S_Beta$S_8_B)
S_Beta$S_Mean <- rowMeans(S_Beta[,2:9], na.rm = TRUE)

C_Beta$COPD_1_B <- as.numeric(C_Beta$COPD_1_B)
C_Beta$COPD_2_B <- as.numeric(C_Beta$COPD_2_B)
C_Beta$COPD_3_B <- as.numeric(C_Beta$COPD_3_B)
C_Beta$COPD_4_B <- as.numeric(C_Beta$COPD_4_B)
C_Beta$COPD_5_B <- as.numeric(C_Beta$COPD_5_B)
C_Beta$COPD_6_B <- as.numeric(C_Beta$COPD_6_B)
C_Beta$COPD_7_B <- as.numeric(C_Beta$COPD_7_B)
C_Beta$COPD_8_B <- as.numeric(C_Beta$COPD_8_B)
C_Beta$COPD_Mean <- rowMeans(C_Beta[,2:9], na.rm = TRUE)

Sundar_Betas <- merge(NS_Beta, S_Beta, by = "ID")
Sundar_Betas <- merge(Sundar_Betas, C_Beta, by = "ID")
write.csv(Sundar_Betas, "OUTPUT_Sundar_Beta_Values.csv")

##### Annotate to Genome #####
#Read and process the Illumina 450k Manifest
Illumina.450k <- read_csv("HumanMethylation450_15017482_v1-2.csv")
Illumina.450k <- Illumina.450k[-c(1,2,3,4,5,6),] #, at the end selects row. Else it removes columns
Illumina.Colnames <- Illumina.450k[1,]
names(Illumina.450k) <- Illumina.Colnames
Illumina.450k <- Illumina.450k[-1,]
names(Illumina.450k)[1] <- "ID"

#Read and process the genome range data from MSKCC, Merge with Illumina data
rowRanges <- read_csv("Row_Ranges.csv")
names(rowRanges)[1] <- "ID"
annotated.Row_Ranges <- merge(rowRanges, Illumina.450k, by= "ID")

annotated_sundar_beta <- merge(annotated.Row_Ranges, Sundar_Betas, by= "ID")

# Removing all values with NA as the Relationship to UCSC CpG Island
cleaned_islands <- subset(annotated_sundar_beta, annotated_sundar_beta$Relation_to_UCSC_CpG_Island == "Island")
cleaned_nshelf <- subset(annotated_sundar_beta, annotated_sundar_beta$Relation_to_UCSC_CpG_Island == "N_Shelf")
cleaned_sshelf <- subset(annotated_sundar_beta, annotated_sundar_beta$Relation_to_UCSC_CpG_Island == "S_Shelf")
cleaned_nshore <- subset(annotated_sundar_beta, annotated_sundar_beta$Relation_to_UCSC_CpG_Island == "N_Shore")
cleaned_sshore <- subset(annotated_sundar_beta, annotated_sundar_beta$Relation_to_UCSC_CpG_Island == "S_Shore")
cleaned_sundar_beta <- rbind(cleaned_islands, cleaned_nshelf, cleaned_nshore, cleaned_sshelf, cleaned_sshore)
write.csv(cleaned_sundar_beta, "OUTPUT_Sundar_CpGLandscape_Beta.csv")

