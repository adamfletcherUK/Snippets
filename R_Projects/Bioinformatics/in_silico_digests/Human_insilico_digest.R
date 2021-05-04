##########################
#  Human in silico restriction digest.
#
#  Script to process Mse1 restriction digest profile for the human genome.
#  Then look to alter this through addition of secondary CH3-specific enzymes.
##########################

##########################
# Script is ammended from Github user kalyankpy. 
# https://gist.github.com/kalyankpy/a65d5f8824f00abe04da#file-genomic_digestion-r
##########################

### Load the needed libraries
# plyr and reshape2 are needed for manipulating the data format
library(Biostrings) #Required for pattern ID
library(BSgenome.Hsapiens.UCSC.hg19) #Human Genome hg19 (To be updated)
library(plyr)
library(ggplot2)
library(reshape2)
library(scales)
library(stringr)


mdf=data.frame();


for (i in seq_along(Hsapiens)){
  print(paste("Processing ",seqnames(Hsapiens)[i], sep=""))
  m<-matchPattern("TTAA", Hsapiens[[i]])
  starts<-start(gaps(m))
  ends<-end(gaps(m))
  temp_df<-data.frame(start=starts,end=ends,chr=seqnames(Hsapiens)[i]) #actually end = ends
  temp_df$start<-replace(temp_df$start, temp_df$start == -2, 1)  #replaces a RE site at beginning of Chr to 0 rather than -3 (due to the starts-4 above)
  temp_df<-temp_df[c("chr","start","end")]
  mdf<-rbind(mdf,temp_df) #nice database merge
}

DNAseq <- str_sub(Hsapiens$chr21, starts, ends)
mdf$DNAseq <- DNAseq

No.MspI.site <- str_count(mdf$DNAseq, 'CCGG')
mdf$MspIcount <- as.numeric(No.MspI.site)

mdf$width=(mdf$end-mdf$start) +1
MseI.df <- mdf
MspI.pos <- subset(mdf,mdf$MspIcount > 0)
MspI.neg <- subset(mdf,mdf$MspIcount == 0)

#Second Digestion with MspI (same site as HpaII- Methyl specific enzyme)
#MspIsite <- str_locate_all(mdf$DNAseq, "CCGG")


MspI.dig=DataFrame()
# a = list()
for(i in 1:nrow(MspI.pos)){
  m<-matchPattern("CCGG", MspI.pos$DNAseq[i])
  starts <- start(gaps(m))
  ends <- end(gaps(m))
  temp_df <- data.frame(start = starts, end = ends, FragNo = i, chr=chr)
  MspI.dig <- rbind(MspI.dig, temp_df)
}

DNAseq <- str_sub(MspI.pos$DNAseq[MspI.dig$FragNo], MspI.dig$start, MspI.dig$end)
MspI.dig$DNAseq <- DNAseq
MspI.dig$width =(MspI.dig$end-MspI.dig$start) +1


MspI.digest<-data.frame(Chr=MspI.dig$chr, width=MspI.dig$width ,DNAseq=MspI.dig$DNAseq)
MseI.Negative.fragments <-data.frame(Chr=MspI.neg$chr, width=MspI.neg$width , DNAseq=MspI.neg$DNAseq)
MspI.total.digest <- rbind(MspI.digest, MseI.Negative.fragments)


# Visualise Data
Mse.trim <- MseI.df[MseI.df$width > 5 & MseI.df$width < 601, ]
counts.Mse <- ddply(Mse.trim, .(width), nrow)
Msp.trim <- MspI.total.digest[MspI.total.digest$width > 5 & MspI.total.digest$width < 601, ]
counts.Msp <- ddply(Msp.trim, .(width), nrow)

Changes=data.frame();
Changes <- counts.Msp
Changes$V1 = Changes$V1 - counts.Mse$V1


p <- ggplot(counts.Msp, aes(x = width)) + 
  geom_line(aes(y = counts.Mse$V1, colour = "MseI Digest")) +
  geom_line(aes(y = counts.Msp$V1, colour = "MseI & MspI")) +
  geom_line(aes(y = Changes$V1, colour = "Change in Fragments"))
p + scale_y_continuous()

#p + scale_y_continuous(trans = log2_trans())



