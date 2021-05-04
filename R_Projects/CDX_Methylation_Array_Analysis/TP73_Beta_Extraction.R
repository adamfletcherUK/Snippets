library(tidyverse)

#Extract TP73 CpG Loci
annotated_beta_values <- read.csv("OUTPUT_annotated_beta.csv")
TP73_betas <- annotated_beta_values %>%
  filter(grepl("TP73", UCSC_RefGene_Name))

#Cleanup dataframe
cleaned_TP73_betas <- TP73_betas[,c(3,10,19,21,22,23,25,26,27,28,29,30,31,32,33,34,35,36)]
cleaned_TP73_betas$feature <- cleaned_TP73_betas$Relation_to_UCSC_CpG_Island

#Create CpG Island feature information (relation to CpG Island = NA became Refgene group)
NA_list <- !is.na(cleaned_TP73_betas$feature)
for (i in 1:nrow(cleaned_TP73_betas)){
  cleaned_TP73_betas$ammended_feature[i] <- ifelse(NA_list[i] == TRUE, toString(cleaned_TP73_betas$feature[i]), toString(cleaned_TP73_betas$UCSC_RefGene_Group[i]))
}



#Plot B-value against location
ggplot(data= cleaned_TP73_betas) +
  geom_point(aes(start, CDX8), colour = "black") +
  geom_point(aes(start,CDX8P), colour = "red")
  facet_wrap(~ ammended_feature)

first_island <- filter(cleaned_TP73_betas, start < 3569386)
ggplot(data= first_island) +
  geom_point(aes(start, CDX8), colour = "black") +
  geom_point(aes(start,CDX8P), colour = "red") +
  geom_vline(xintercept = 3569129)

biggest_difference <- filter(cleaned_TP73_betas, start < 3568400)
ggplot(data= biggest_difference) +
  geom_point(aes(start, CDX8), colour = "black") +
  geom_point(aes(start,CDX8P), colour = "red") +
  facet_wrap(~ feature)

#Extract TP73 and WDR8 (WRAP73)
TP73_WDR8_betas <- annotated_beta_values %>%
  filter(grepl("TP73", UCSC_RefGene_Name) | grepl("WDR8", UCSC_RefGene_Name) & (CHR == 1)) %>%
  mutate(NA_list = !is.na(Relation_to_UCSC_CpG_Island))
for (i in 1:nrow(TP73_WDR8_betas)){
  TP73_WDR8_betas$feature[i] <- if_else(
    TP73_WDR8_betas$NA_list[i] == TRUE, 
    toString(TP73_WDR8_betas$Relation_to_UCSC_CpG_Island[i]), 
    toString(TP73_WDR8_betas$UCSC_RefGene_Group[i]))
  }
ggplot(data= TP73_WDR8_betas) +
  geom_point(aes(start, CDX8), colour = "black") +
  geom_point(aes(start,CDX8P), colour = "red") +
  facet_wrap(~ feature)

TP73_WDR8_intergenic <- TP73_WDR8_betas %>%
  select(c(3,25:36,38)) %>%
  filter(start > 3564000 & start < 3570000) %>%
  gather("CDX", "beta", 2:13) %>%
  filter(CDX %in% c("CDX8","CDX8P","CDX3","CDX3P"))
ggplot(TP73_WDR8_intergenic) +
  geom_point(aes(x= start, y= beta, colour = CDX, shape = feature))

TP73_WDR8_HiDiffMeth <- TP73_WDR8_betas %>%
  select(c(3,25:36,38)) %>%
  filter(start > 3566500 & start < 3568000) %>%
  gather("CDX", "beta", 2:13) %>%
  filter(CDX %in% c("CDX8","CDX8P","CDX3","CDX3P"))
ggplot(TP73_WDR8_HiDiffMeth) +
  geom_point(aes(x= start, y= beta, colour = CDX)) +
  labs(title= "TP73 & WDR8 Highly Differential Region", x= "Chr 1 Position", y = "Beta Value")
  