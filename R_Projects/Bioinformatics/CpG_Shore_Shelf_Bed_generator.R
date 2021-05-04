## CpG Island, Shore and Shelf BED file Generator ##
## Adam Fletcher ##
## 31 JULY 2018 ##
## Version 1.0 ##

## REQUIREMENTS:
## CpG Island BED file downloaded from UCSC (Hg38 assembly)

## Current Caveats for updates:
## There are presumably overlapping regions generated here. Unsure what effect this will have at present
## The -2000 metrics for shelves/shores could make negative values. This needs fixing!


# Load/Install Required Packages
requiredPackages <- c("rtracklayer", "bedr")
ipak <- function(pkg){
  new.pkg <- pkg[!(pkg %in% installed.packages()[, "Package"])]
  if (length(new.pkg))
    install.packages(new.pkg, dependencies = TRUE)
  sapply(pkg, require, character.only = TRUE)
}
ipak(requiredPackages)
rm(requiredPackages)

#Read and Cleanup UCSC Hg38 CpG Island BED File
cpg_islands=read.table("Hg38_CpGi.bed", header =FALSE, sep = "\t")
# name the columns
names(cpg_islands)<-c("binNo", "seqnames","start","end","name", "length", "cpgNum", "gcNum", "perCpg", "perGC", "obsExp")
#replace the column labelled name
cpg_islands$name<-"island"
cpg_islands$start=cpg_islands$start

cleaned.cpg_sites <- cpg_islands[c(2,3,4,5)]


## Generate Shore and Shelf Coordinates

Nshore <- as.data.frame(cleaned.cpg_sites[1])
Nshore$start <- cleaned.cpg_sites$start - 2000
Nshore$end <- cleaned.cpg_sites$start
Nshore$name <- "Nshore"

Sshore <- as.data.frame(cleaned.cpg_sites[1])
Sshore$start <- cleaned.cpg_sites$end
Sshore$end <- cleaned.cpg_sites$end + 2000
Sshore$name <- "Sshore"

Nshelf <- as.data.frame(cleaned.cpg_sites[1])
Nshelf$start <- Nshore$start - 2000
Nshelf$end <- Nshore$start
Nshelf$name <- "Nshelf"

Sshelf <- as.data.frame(cleaned.cpg_sites[1])
Sshelf$start <- Sshore$end
Sshelf$end <- Sshore$end + 2000
Sshelf$name <- "Sshelf"

# Data frame merge and file output
CpG_landscape <- rbind(cleaned.cpg_sites, Nshore, Sshore, Nshelf, Sshelf)
write.table(CpG_landscape, "CpG_landscape.bed", sep = "\t", quote= FALSE, row.names = FALSE)
