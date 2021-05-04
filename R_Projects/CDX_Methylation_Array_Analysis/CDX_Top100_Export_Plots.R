library(tidyverse)
library(gghighlight)

annotated.betas <- read_csv("OUTPUT_annotated_beta.csv")


##### Extract and Cleanup Data #####
#Top and Bottom CDX 1 Genes
ordered.betas <- annotated.betas[with(annotated.betas,order(-annotated.betas$CDX1)),]
top_100 <- ordered.betas[1:100,]
ordered.betas <- annotated.betas[with(annotated.betas,order(annotated.betas$CDX1)),]
bot_100 <- ordered.betas[1:100,]
CDX1_200 <- rbind(top_100, bot_100)

#Top and Bottom CDX 3 Genes
ordered.betas <- annotated.betas[with(annotated.betas,order(-annotated.betas$CDX3)),]
top_100 <- ordered.betas[1:100,]
ordered.betas <- annotated.betas[with(annotated.betas,order(annotated.betas$CDX3)),]
bot_100 <- ordered.betas[1:100,]
CDX3_200 <- rbind(top_100, bot_100) 

#Top and Bottom CDX 4 Genes
ordered.betas <- annotated.betas[with(annotated.betas,order(-annotated.betas$CDX4)),]
top_100 <- ordered.betas[1:100,]
ordered.betas <- annotated.betas[with(annotated.betas,order(annotated.betas$CDX4)),]
bot_100 <- ordered.betas[1:100,]
CDX4_200 <- rbind(top_100, bot_100) 

#Top and Bottom CDX 3P Genes
ordered.betas <- annotated.betas[with(annotated.betas,order(-annotated.betas$CDX3P)),]
top_100 <- ordered.betas[1:100,]
ordered.betas <- annotated.betas[with(annotated.betas,order(annotated.betas$CDX3P)),]
bot_100 <- ordered.betas[1:100,]
CDX3P_200 <- rbind(top_100, bot_100) 

#Top and Bottom CDX 8 Genes
ordered.betas <- annotated.betas[with(annotated.betas,order(-annotated.betas$CDX8)),]
top_100 <- ordered.betas[1:100,]
ordered.betas <- annotated.betas[with(annotated.betas,order(annotated.betas$CDX8)),]
bot_100 <- ordered.betas[1:100,]
CDX8_200 <- rbind(top_100, bot_100) 

#Top and Bottom CDX 8P Genes
ordered.betas <- annotated.betas[with(annotated.betas,order(-annotated.betas$CDX8P)),]
top_100 <- ordered.betas[1:100,]
ordered.betas <- annotated.betas[with(annotated.betas,order(annotated.betas$CDX8P)),]
bot_100 <- ordered.betas[1:100,]
CDX8P_200 <- rbind(top_100, bot_100)

#Top and Bottom CDX 7 Genes
ordered.betas <- annotated.betas[with(annotated.betas,order(-annotated.betas$CDX7)),]
top_100 <- ordered.betas[1:100,]
ordered.betas <- annotated.betas[with(annotated.betas,order(annotated.betas$CDX7)),]
bot_100 <- ordered.betas[1:100,]
CDX7_200 <- rbind(top_100, bot_100) 

#Top and Bottom CDX 10 Genes
ordered.betas <- annotated.betas[with(annotated.betas,order(-annotated.betas$CDX10)),]
top_100 <- ordered.betas[1:100,]
ordered.betas <- annotated.betas[with(annotated.betas,order(annotated.betas$CDX10)),]
bot_100 <- ordered.betas[1:100,]
CDX10_200 <- rbind(top_100, bot_100) 

#Top and Bottom CDX 12 Genes
ordered.betas <- annotated.betas[with(annotated.betas,order(-annotated.betas$CDX12)),]
top_100 <- ordered.betas[1:100,]
ordered.betas <- annotated.betas[with(annotated.betas,order(annotated.betas$CDX12)),]
bot_100 <- ordered.betas[1:100,]
CDX12_200 <- rbind(top_100, bot_100) 

#Top and Bottom CDX 13 Genes
ordered.betas <- annotated.betas[with(annotated.betas,order(-annotated.betas$CDX13)),]
top_100 <- ordered.betas[1:100,]
ordered.betas <- annotated.betas[with(annotated.betas,order(annotated.betas$CDX13)),]
bot_100 <- ordered.betas[1:100,]
CDX13_200 <- rbind(top_100, bot_100) 

#Top and Bottom CDX 14P Genes
ordered.betas <- annotated.betas[with(annotated.betas,order(-annotated.betas$CDX14P)),]
top_100 <- ordered.betas[1:100,]
ordered.betas <- annotated.betas[with(annotated.betas,order(annotated.betas$CDX14P)),]
bot_100 <- ordered.betas[1:100,]
CDX14P_200 <- rbind(top_100, bot_100) 

#Top and Bottom CDX 15P Genes
ordered.betas <- annotated.betas[with(annotated.betas,order(-annotated.betas$CDX15P)),]
top_100 <- ordered.betas[1:100,]
ordered.betas <- annotated.betas[with(annotated.betas,order(annotated.betas$CDX15P)),]
bot_100 <- ordered.betas[1:100,]
CDX15P_200 <- rbind(top_100, bot_100) 

#Cleanup
CDX1_200 <- CDX1_200[,-c(1, 5, 6, 7, 8, 9, 11, 12, 13, 14, 15, 16, 17, 18, 24)]
CDX10_200 <- CDX10_200[,-c(1, 5, 6, 7, 8, 9, 11, 12, 13, 14, 15, 16, 17, 18, 24)]
CDX12_200 <- CDX12_200[,-c(1, 5, 6, 7, 8, 9, 11, 12, 13, 14, 15, 16, 17, 18, 24)]
CDX13_200 <- CDX13_200[,-c(1, 5, 6, 7, 8, 9, 11, 12, 13, 14, 15, 16, 17, 18, 24)]
CDX14P_200 <- CDX14P_200[,-c(1, 5, 6, 7, 8, 9, 11, 12, 13, 14, 15, 16, 17, 18, 24)]
CDX15P_200 <- CDX15P_200[,-c(1, 5, 6, 7, 8, 9, 11, 12, 13, 14, 15, 16, 17, 18, 24)]
CDX3_200 <- CDX3_200[,-c(1, 5, 6, 7, 8, 9, 11, 12, 13, 14, 15, 16, 17, 18, 24)]
CDX3P_200 <- CDX3P_200[,-c(1, 5, 6, 7, 8, 9, 11, 12, 13, 14, 15, 16, 17, 18, 24)]
CDX4_200 <- CDX4_200[,-c(1, 5, 6, 7, 8, 9, 11, 12, 13, 14, 15, 16, 17, 18, 24)]
CDX7_200 <- CDX7_200[,-c(1, 5, 6, 7, 8, 9, 11, 12, 13, 14, 15, 16, 17, 18, 24)]
CDX8_200 <- CDX8_200[,-c(1, 5, 6, 7, 8, 9, 11, 12, 13, 14, 15, 16, 17, 18, 24)]
CDX8P_200 <- CDX8P_200[,-c(1, 5, 6, 7, 8, 9, 11, 12, 13, 14, 15, 16, 17, 18, 24)]

#Data Export
write.csv(CDX1_200, "CDX1_200.csv")
write.csv(CDX10_200, "CDX10_200.csv")
write.csv(CDX12_200, "CDX12_200.csv")
write.csv(CDX13_200, "CDX13_200.csv")
write.csv(CDX14P_200, "CDX14P_200.csv")
write.csv(CDX15P_200, "CDX15P_200.csv")
write.csv(CDX3_200, "CDX3_200.csv")
write.csv(CDX3P_200, "CDX3P_200.csv")
write.csv(CDX4_200, "CDX4_200.csv")
write.csv(CDX7_200, "CDX7_200.csv")
write.csv(CDX8_200, "CDX8_200.csv")
write.csv(CDX8P_200, "CDX8P_200.csv")

##### B Value Cleanup and Transpose #####

## CDX 1
trans_CDX1_200 <- CDX1_200[,-c(2:9)] 
clean_CDX1_200 <- gather(trans_CDX1_200, key= CDX, value = B-Value, CDX1:CDX15P)
colnames(clean_CDX1_200)[1] <- "CpG_Index"
colnames(clean_CDX1_200)[3] <- "B_value" 

## CDX 10
trans_CDX10_200 <- CDX10_200[,-c(2:9)] 
clean_CDX10_200 <- gather(trans_CDX10_200, key= CDX, value = B-Value, CDX1:CDX15P)
colnames(clean_CDX10_200)[1] <- "CpG_Index"
colnames(clean_CDX10_200)[3] <- "B_value" 

## CDX 12
trans_CDX12_200 <- CDX12_200[,-c(2:9)] 
clean_CDX12_200 <- gather(trans_CDX12_200, key= CDX, value = B-Value, CDX1:CDX15P)
colnames(clean_CDX12_200)[1] <- "CpG_Index"
colnames(clean_CDX12_200)[3] <- "B_value" 

## CDX 13
trans_CDX13_200 <- CDX13_200[,-c(2:9)] 
clean_CDX13_200 <- gather(trans_CDX13_200, key= CDX, value = B-Value, CDX1:CDX15P)
colnames(clean_CDX13_200)[1] <- "CpG_Index"
colnames(clean_CDX13_200)[3] <- "B_value" 

## CDX 14P
trans_CDX14P_200 <- CDX14P_200[,-c(2:9)] 
clean_CDX14P_200 <- gather(trans_CDX14P_200, key= CDX, value = B-Value, CDX1:CDX15P)
colnames(clean_CDX14P_200)[1] <- "CpG_Index"
colnames(clean_CDX14P_200)[3] <- "B_value" 

## CDX 15P
trans_CDX15P_200 <- CDX15P_200[,-c(2:9)] 
clean_CDX15P_200 <- gather(trans_CDX15P_200, key= CDX, value = B-Value, CDX1:CDX15P)
colnames(clean_CDX15P_200)[1] <- "CpG_Index"
colnames(clean_CDX15P_200)[3] <- "B_value" 

## CDX 3
trans_CDX3_200 <- CDX3_200[,-c(2:9)] 
clean_CDX3_200 <- gather(trans_CDX3_200, key= CDX, value = B-Value, CDX1:CDX15P)
colnames(clean_CDX3_200)[1] <- "CpG_Index"
colnames(clean_CDX3_200)[3] <- "B_value"

## CDX 3P
trans_CDX3P_200 <- CDX3P_200[,-c(2:9)] 
clean_CDX3P_200 <- gather(trans_CDX3P_200, key= CDX, value = B-Value, CDX1:CDX15P)
colnames(clean_CDX3P_200)[1] <- "CpG_Index"
colnames(clean_CDX3P_200)[3] <- "B_value"

## CDX 4
trans_CDX4_200 <- CDX4_200[,-c(2:9)] 
clean_CDX4_200 <- gather(trans_CDX4_200, key= CDX, value = B-Value, CDX1:CDX15P)
colnames(clean_CDX4_200)[1] <- "CpG_Index"
colnames(clean_CDX4_200)[3] <- "B_value"

## CDX 7
trans_CDX7_200 <- CDX7_200[,-c(2:9)] 
clean_CDX7_200 <- gather(trans_CDX7_200, key= CDX, value = B-Value, CDX1:CDX15P)
colnames(clean_CDX7_200)[1] <- "CpG_Index"
colnames(clean_CDX7_200)[3] <- "B_value"

## CDX 8
trans_CDX8_200 <- CDX8_200[,-c(2:9)] 
clean_CDX8_200 <- gather(trans_CDX8_200, key= CDX, value = B-Value, CDX1:CDX15P)
colnames(clean_CDX8_200)[1] <- "CpG_Index"
colnames(clean_CDX8_200)[3] <- "B_value"

## CDX 8P
trans_CDX8P_200 <- CDX8P_200[,-c(2:9)] 
clean_CDX8P_200 <- gather(trans_CDX8P_200, key= CDX, value = B-Value, CDX1:CDX15P)
colnames(clean_CDX8P_200)[1] <- "CpG_Index"
colnames(clean_CDX8P_200)[3] <- "B_value"

pdf(file = "CDX_Variance_TopBot100.pdf")

##### Plot CDX 1 B values #####
ggplot(data = clean_CDX1_200, #select the dataset to be in the graph (but not the actual data values)
       ### Global Mapping (Across multiple Geom types)     
       mapping = aes(x = CpG_Index,
                     y = B_value)) +  
  labs(x = 'CpG Site',y = 'B Value', title = 'CDX 1 Top and Bottom 100 CpG Sites: B Value') +
  ### Single Scatterplot ###
  geom_point(mapping = aes(,
                           x = reorder(CpG_Index, -B_value),
                           y = B_value,
                           colour = NULL, #ifelse(CDX == "CDX1", "red", "black"), # Changes the colour of the points
                           size = NULL, # Changes size of the points
                           alpha = NULL, # Transparency,between 0-1 (usually a fraction)
                           shape = NULL)) +
  gghighlight(CDX == "CDX1", use_group_by = FALSE) +
  theme(axis.text.x = element_blank(), axis.ticks = element_blank())




##### Plot CDX 3 B values #####

ggplot(data = clean_CDX3_200, #select the dataset to be in the graph (but not the actual data values)
       ### Global Mapping (Across multiple Geom types)     
       mapping = aes(x = CpG_Index,
                     y = B_value)) +  
  labs(x = 'CpG Site',y = 'B Value', title = 'CDX 3 Top and Bottom 100 CpG Sites: B Value') +
  ### Single Scatterplot ###
  geom_point(mapping = aes(,
                           x = reorder(CpG_Index, -B_value),
                           y = B_value,
                           colour = NULL, #ifelse(CDX == "CDX1", "red", "black"), # Changes the colour of the points
                           size = NULL, # Changes size of the points
                           alpha = NULL, # Transparency,between 0-1 (usually a fraction)
                           shape = NULL)) +
  gghighlight(CDX == "CDX3", use_group_by = FALSE) +
  theme(axis.text.x = element_blank(), axis.ticks = element_blank())
##### Plot CDX 3P B values #####

ggplot(data = clean_CDX3P_200, #select the dataset to be in the graph (but not the actual data values)
       ### Global Mapping (Across multiple Geom types)     
       mapping = aes(x = CpG_Index,
                     y = B_value)) +  
  labs(x = 'CpG Site',y = 'B Value', title = 'CDX 3P Top and Bottom 100 CpG Sites: B Value') +
  ### Single Scatterplot ###
  geom_point(mapping = aes(,
                           x = reorder(CpG_Index, -B_value),
                           y = B_value,
                           colour = NULL, #ifelse(CDX == "CDX1", "red", "black"), # Changes the colour of the points
                           size = NULL, # Changes size of the points
                           alpha = NULL, # Transparency,between 0-1 (usually a fraction)
                           shape = NULL)) +
  gghighlight(CDX == "CDX3P", use_group_by = FALSE) +
  theme(axis.text.x = element_blank(), axis.ticks = element_blank())

##### Plot CDX 4 values #####

ggplot(data = clean_CDX4_200, #select the dataset to be in the graph (but not the actual data values)
       ### Global Mapping (Across multiple Geom types)     
       mapping = aes(x = CpG_Index,
                     y = B_value)) +  
  labs(x = 'CpG Site',y = 'B Value', title = 'CDX 4 Top and Bottom 100 CpG Sites: B Value') +
  ### Single Scatterplot ###
  geom_point(mapping = aes(,
                           x = reorder(CpG_Index, -B_value),
                           y = B_value,
                           colour = NULL, #ifelse(CDX == "CDX1", "red", "black"), # Changes the colour of the points
                           size = NULL, # Changes size of the points
                           alpha = NULL, # Transparency,between 0-1 (usually a fraction)
                           shape = NULL)) +
  gghighlight(CDX == "CDX4", use_group_by = FALSE) +
  theme(axis.text.x = element_blank(), axis.ticks = element_blank())
##### Plot CDX 7 values #####

ggplot(data = clean_CDX7_200, #select the dataset to be in the graph (but not the actual data values)
       ### Global Mapping (Across multiple Geom types)     
       mapping = aes(x = CpG_Index,
                     y = B_value)) +  
  labs(x = 'CpG Site',y = 'B Value', title = 'CDX 7 Top and Bottom 100 CpG Sites: B Value') +
  ### Single Scatterplot ###
  geom_point(mapping = aes(,
                           x = reorder(CpG_Index, -B_value),
                           y = B_value,
                           colour = NULL, #ifelse(CDX == "CDX1", "red", "black"), # Changes the colour of the points
                           size = NULL, # Changes size of the points
                           alpha = NULL, # Transparency,between 0-1 (usually a fraction)
                           shape = NULL)) +
  gghighlight(CDX == "CDX7", use_group_by = FALSE) +
  theme(axis.text.x = element_blank(), axis.ticks = element_blank())
##### Plot CDX 8 values #####

ggplot(data = clean_CDX8_200, #select the dataset to be in the graph (but not the actual data values)
       ### Global Mapping (Across multiple Geom types)     
       mapping = aes(x = CpG_Index,
                     y = B_value)) +  
  labs(x = 'CpG Site',y = 'B Value', title = 'CDX 8 Top and Bottom 100 CpG Sites: B Value') +
  ### Single Scatterplot ###
  geom_point(mapping = aes(,
                           x = reorder(CpG_Index, -B_value),
                           y = B_value,
                           colour = NULL, #ifelse(CDX == "CDX1", "red", "black"), # Changes the colour of the points
                           size = NULL, # Changes size of the points
                           alpha = NULL, # Transparency,between 0-1 (usually a fraction)
                           shape = NULL)) +
  gghighlight(CDX == "CDX8", use_group_by = FALSE) +
  theme(axis.text.x = element_blank(), axis.ticks = element_blank())
##### Plot CDX 8P values #####

ggplot(data = clean_CDX8P_200, #select the dataset to be in the graph (but not the actual data values)
       ### Global Mapping (Across multiple Geom types)     
       mapping = aes(x = CpG_Index,
                     y = B_value)) +  
  labs(x = 'CpG Site',y = 'B Value', title = 'CDX 8P Top and Bottom 100 CpG Sites: B Value') +
  ### Single Scatterplot ###
  geom_point(mapping = aes(,
                           x = reorder(CpG_Index, -B_value),
                           y = B_value,
                           colour = NULL, #ifelse(CDX == "CDX1", "red", "black"), # Changes the colour of the points
                           size = NULL, # Changes size of the points
                           alpha = NULL, # Transparency,between 0-1 (usually a fraction)
                           shape = NULL)) +
  gghighlight(CDX == "CDX8P", use_group_by = FALSE) +
  theme(axis.text.x = element_blank(), axis.ticks = element_blank())
##### Plot CDX 10 values #####

ggplot(data = clean_CDX10_200, #select the dataset to be in the graph (but not the actual data values)
       ### Global Mapping (Across multiple Geom types)     
       mapping = aes(x = CpG_Index,
                     y = B_value)) +  
  labs(x = 'CpG Site',y = 'B Value', title = 'CDX 10 Top and Bottom 100 CpG Sites: B Value') +
  ### Single Scatterplot ###
  geom_point(mapping = aes(,
                           x = reorder(CpG_Index, -B_value),
                           y = B_value,
                           colour = NULL, #ifelse(CDX == "CDX1", "red", "black"), # Changes the colour of the points
                           size = NULL, # Changes size of the points
                           alpha = NULL, # Transparency,between 0-1 (usually a fraction)
                           shape = NULL)) +
  gghighlight(CDX == "CDX10", use_group_by = FALSE) +
  theme(axis.text.x = element_blank(), axis.ticks = element_blank())

##### Plot CDX 12 values #####

ggplot(data = clean_CDX12_200, #select the dataset to be in the graph (but not the actual data values)
       ### Global Mapping (Across multiple Geom types)     
       mapping = aes(x = CpG_Index,
                     y = B_value)) +  
  labs(x = 'CpG Site',y = 'B Value', title = 'CDX 12 Top and Bottom 100 CpG Sites: B Value') +
  ### Single Scatterplot ###
  geom_point(mapping = aes(,
                           x = reorder(CpG_Index, -B_value),
                           y = B_value,
                           colour = NULL, #ifelse(CDX == "CDX1", "red", "black"), # Changes the colour of the points
                           size = NULL, # Changes size of the points
                           alpha = NULL, # Transparency,between 0-1 (usually a fraction)
                           shape = NULL)) +
  gghighlight(CDX == "CDX12", use_group_by = FALSE) +
  theme(axis.text.x = element_blank(), axis.ticks = element_blank())


##### Plot CDX 13 values #####

ggplot(data = clean_CDX13_200, #select the dataset to be in the graph (but not the actual data values)
       ### Global Mapping (Across multiple Geom types)     
       mapping = aes(x = CpG_Index,
                     y = B_value)) +  
  labs(x = 'CpG Site',y = 'B Value', title = 'CDX 13 Top and Bottom 100 CpG Sites: B Value') +
  ### Single Scatterplot ###
  geom_point(mapping = aes(,
                           x = reorder(CpG_Index, -B_value),
                           y = B_value,
                           colour = NULL, #ifelse(CDX == "CDX1", "red", "black"), # Changes the colour of the points
                           size = NULL, # Changes size of the points
                           alpha = NULL, # Transparency,between 0-1 (usually a fraction)
                           shape = NULL)) +
  gghighlight(CDX == "CDX13", use_group_by = FALSE) +
  theme(axis.text.x = element_blank(), axis.ticks = element_blank())
##### Plot CDX 14P values #####

ggplot(data = clean_CDX14P_200, #select the dataset to be in the graph (but not the actual data values)
       ### Global Mapping (Across multiple Geom types)     
       mapping = aes(x = CpG_Index,
                     y = B_value)) +  
  labs(x = 'CpG Site',y = 'B Value', title = 'CDX 14P Top and Bottom 100 CpG Sites: B Value') +
  ### Single Scatterplot ###
  geom_point(mapping = aes(,
                           x = reorder(CpG_Index, -B_value),
                           y = B_value,
                           colour = NULL, #ifelse(CDX == "CDX1", "red", "black"), # Changes the colour of the points
                           size = NULL, # Changes size of the points
                           alpha = NULL, # Transparency,between 0-1 (usually a fraction)
                           shape = NULL)) +
  gghighlight(CDX == "CDX14P", use_group_by = FALSE) +
  theme(axis.text.x = element_blank(), axis.ticks = element_blank())
##### Plot CDX 15P values #####

ggplot(data = clean_CDX15P_200, #select the dataset to be in the graph (but not the actual data values)
       ### Global Mapping (Across multiple Geom types)     
       mapping = aes(x = CpG_Index,
                     y = B_value)) +  
  labs(x = 'CpG Site',y = 'B Value', title = 'CDX 15P Top and Bottom 100 CpG Sites: B Value') +
  ### Single Scatterplot ###
  geom_point(mapping = aes(,
                           x = reorder(CpG_Index, -B_value),
                           y = B_value,
                           colour = NULL, #ifelse(CDX == "CDX1", "red", "black"), # Changes the colour of the points
                           size = NULL, # Changes size of the points
                           alpha = NULL, # Transparency,between 0-1 (usually a fraction)
                           shape = NULL)) +
  gghighlight(CDX == "CDX15P", use_group_by = FALSE) +
  theme(axis.text.x = element_blank(), axis.ticks = element_blank())

dev.off()