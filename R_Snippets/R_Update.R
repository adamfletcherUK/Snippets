# Automatic Package installer for R
#
# Adam Fletcher, Initial Version 15NOV16

# Installs multiple R packages and repositories in one simple script

# Intro text.
cat("R Package Installer - Adam Fletcher, Feburary 2017.\n\n",
 "This tool automatically installs multiple packages used in R \n",
 "Please select local libraries during install and select install ALL \n", 
 sep="")

#####
#Install from CRAN repositories
#####

#Data Manipulation Packages
install.packages(c("stringr", "plyr", "sqldf", "forecast", "reshape2", "XML", "gdata"))

#Graphical Processing
install.packages(c("ggplot2", "RColorBrewer", "colorspace", "manipulate", "scales", "labelling"))

#Statistics
install.packages(c("qcc"))

#Machine Learning
#install.packages(c("randomForest"))

#Misc
install.packages(c("lubridate", "knitr", "devtools"))

#Install additional packages (For External use)
#install.packages(c("Package_Name")) #remove the "#" at beginning of line to include

#####
#Bioconductor Packages
#####

#Install Bioconductor
## try http:// if https:// URLs are not supported
source("http://bioconductor.org/biocLite.R")
biocLite()
a
## RE-RUN THIS SECTION OF CODE INDIVIDUALLY ##
#
#Install Bioconductor packages
#
# Sequence Read Analysis
biocLite(c("Rsamtools", "IRanges", "GenomicRanges", "GenomicAlignments", "GenomicFeatures", "ShortRead"))
a
#
# Sequence Alignment
biocLite(c("muscle", "Biostrings", "biomaRt", "rtracklayer", "msa")
a
#
# Reference Genomes
biocLite(c("BSgenome", "BSgenome.Mmusculus.UCSC.mm10","BSgenome.Hsapiens.UCSC.hg19"))
a
#
biocLite()
a
##
 






