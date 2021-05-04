#########################################################
### CDX RNAseq Heatmap Generator
### Adam Fletcher
### 180702
### Version 0.1
#########################################################

#########################################################
### Changelog:
#########################################################


#########################################################
### References and Tools:
### Basic Heatmap Instructions
### https://flowingdata.com/2010/01/21/how-to-make-a-heatmap-a-quick-and-easy-solution/
###
### In-depth Heatmap Tutorial
### http://sebastianraschka.com/Articles/heatmaps_in_r.html
### https://github.com/rasbt/R_snippets/tree/master/heatmaps
#########################################################

#########################################################
### A) Installing and loading required packages, setting working directory 
#########################################################

if (!require("gplots")) {
  install.packages("gplots", dependencies = TRUE)
  library(gplots)
}
if (!require("RColorBrewer")) {
  install.packages("RColorBrewer", dependencies = TRUE)
  library(RColorBrewer)
}
#Mac OS Requires X11 and XQuartz (https://www.xquartz.org/)
if (!require("tcltk")) {
  install.packages("tcltk", dependencies = TRUE)
  library(tcltk)
}

# https://stackoverflow.com/questions/33511964/r-windows-os-choose-dir-file-chooser-wont-open-at-working-directory
getwd()
dir <- tclvalue(tkchooseDirectory()) 
setwd(dir)

#########################################################
### B) Reading in data and transform it into matrix format
#########################################################


RNAseq.dataframe <- read.csv("SCLC_CDX_1-32_P3_RPKM.csv", header=TRUE, sep=",")
RNAseq.dataframe <- subset(RNAseq.dataframe, RNAseq.dataframe$gene_biotype == "protein_coding")  # only select protein coding RNA transcripts
row.names(RNAseq.dataframe) <- RNAseq.dataframe$gene_id  # labels column by gene ID (not gene name due to duplications)
RNAseq.dataframe <- RNAseq.dataframe[,5:17] # removes the first 4 columns of the data frame which are not needed
RNAseq.matrix <- data.matrix(RNAseq.dataframe) # turn dataframe into a matrix for use with heatmap
# rnames <- data[,1]                            # assign labels in column 1 to "rnames"
# mat_data <- data.matrix(data[,2:ncol(data)])  # transform column 2-5 into a matrix
# rownames(mat_data) <- rnames                  # assign row names

# # Basic Heatmaps
RNAseq.heatmap <- heatmap(RNAseq.matrix, Rowv=NA, Colv=NA, col = cm.colors(256), margins=c(5,10))

breakpoints = c("0.0000001", "1", "5")
# 
heatmap.2(RNAseq.matrix, trace='none', breaks=breakpoints, col=greenred(25), symm=F,symkey=F,symbreaks=T, scale="none")


##############
colors = c(seq(0,0.00001,length=100),seq(0.000011,1,length=100),seq(1.00001,50,length=100))

my_palette <- colorRampPalette(c("green", "white", "red"))(n = 299)

heatmap.2(RNAseq.matrix, col=my_palette, breaks=colors, density.info="none", trace="none", symm=F,symkey=F,symbreaks=T, scale="none")

#############



#########################################################
### C) Customizing and plotting the heat map
#########################################################

# creates a own color palette from red to green
my_palette <- colorRampPalette(c("red", "yellow", "green"))(n = 20)

# # (optional) defines the color breaks manually for a "skewed" color transition
# col_breaks = c(seq(-1,0,length=100),  # for red
#                seq(0.01,0.8,length=100),           # for yellow
#                seq(0.81,1,length=100))             # for green

# creates a 15 x 15 inch image
png("./CDX_Heatmap01.png",    # create PNG for the heat map
    width = 15*900,        # 5 x 300 pixels
    height = 15*900,
    res = 900,            # 300 pixels per inch
    pointsize = 8)        # smaller font size

heatmap.2(RNAseq.matrix,
          # cellnote = RNAseq.matrix,  # same data set for cell labels
          main = "Correlation", # heat map title
          notecol="black",      # change font color of cell labels to black
          density.info="none",  # turns off density plot inside color legend
          trace="none",         # turns off trace lines inside the heat map
          margins =c(12,9),     # widens margins around plot
          col=my_palette,       # use on color palette defined earlier
          # breaks=col_breaks,    # enable color transition at specified limits
          dendrogram="column",     # only draw a column dendrogram
          Colv="NA")            # turn off column clustering

dev.off()               # close the PNG device