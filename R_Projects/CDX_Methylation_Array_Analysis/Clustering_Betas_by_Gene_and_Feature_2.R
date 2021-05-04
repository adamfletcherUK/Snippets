library(tidyverse)
setwd("~/Desktop/Meth Array Data ")
annotated_betas <- read_csv("OUTPUT_annotated_beta.csv")

betas_by_gene <- annotated_betas %>%
  select(c(3,10,19,21:36)) %>%
  separate_rows(UCSC_RefGene_Name, UCSC_RefGene_Group, sep = ";") %>%
  mutate(CpG_Name = case_when(
    !is.na(UCSC_CpG_Islands_Name) == TRUE ~ UCSC_CpG_Islands_Name,
    !is.na(Phantom) == TRUE ~ Phantom
    )) %>%
  unique() %>%
  filter(CHR != "X", CHR != "Y")  #removes CHR X and Y
  #filter(grepl("MIR", UCSC_RefGene_Name)) %>% #To Test with a massive gene
  #filter(is.na(UCSC_RefGene_Name)) %>%

betas_by_gene1 <- betas_by_gene

  grouped_genes <- group_by(betas_by_gene, UCSC_RefGene_Name, CHR) %>%
  summarise(
    No_Loci=  n_distinct(CDX1),
    CDX1_mean= mean(CDX1),
    CDX1_sd= sd(CDX1),
    CDX1_pcent_dev= (sd(CDX1)/mean(CDX1))*100,
    CDX3_mean= mean(CDX3),
    CDX3_sd= sd(CDX3),
    CDX3_pcent_dev= (sd(CDX3)/mean(CDX3))*100,
    CDX3P_mean= mean(CDX3P),
    CDX3P_sd= sd(CDX3P),
    CDX3P_pcent_dev= (sd(CDX3P)/mean(CDX3P))*100,
    CDX4_mean= mean(CDX4),
    CDX4_sd= sd(CDX4),
    CDX4_pcent_dev= (sd(CDX4)/mean(CDX4))*100,
    CDX7_mean= mean(CDX7),
    CDX7_sd= sd(CDX7),
    CDX7_pcent_dev= (sd(CDX7)/mean(CDX7))*100,
    CDX8_mean= mean(CDX8),
    CDX8_sd= sd(CDX8),
    CDX8_pcent_dev= (sd(CDX8)/mean(CDX8))*100,
    CDX8P_mean= mean(CDX8P),
    CDX8P_sd= sd(CDX8P),
    CDX8P_pcent_dev= (sd(CDX8P)/mean(CDX8P))*100,
    CDX10_mean= mean(CDX10),
    CDX10_sd= sd(CDX10),
    CDX10_pcent_dev= (sd(CDX10)/mean(CDX10))*100,
    CDX12_mean= mean(CDX12),
    CDX12_sd= sd(CDX12),
    CDX12_pcent_dev= (sd(CDX12)/mean(CDX12))*100,
    CDX13_mean= mean(CDX13),
    CDX13_sd= sd(CDX13),
    CDX13_pcent_dev= (sd(CDX13)/mean(CDX13))*100,
    CDX14P_mean= mean(CDX14P),
    CDX14P_sd= sd(CDX14P),
    CDX14P_pcent_dev= (sd(CDX14P)/mean(CDX14P))*100,
    CDX15P_mean= mean(CDX15P),
    CDX15P_sd= sd(CDX15P),
    CDX15P_pcent_dev= (sd(CDX15P)/mean(CDX15P))*100,
    Mean_pcent_sd= sum(CDX1_pcent_dev, CDX3_pcent_dev, CDX3P_pcent_dev, CDX4_pcent_dev, CDX7_pcent_dev, CDX8_pcent_dev, CDX8P_pcent_dev, CDX10_pcent_dev, CDX12_pcent_dev, CDX13_pcent_dev, CDX14P_pcent_dev, CDX15P_pcent_dev)/12
  ) %>%  #is mean %SD the best measure, or should I use the max SD??
  filter(Mean_pcent_sd <= 10)
betas_by_gene <- filter(betas_by_gene, !(UCSC_RefGene_Name %in% grouped_genes$UCSC_RefGene_Name & CHR %in% grouped_genes$CHR))

betas_by_gene2 <- betas_by_gene

grouped_CpGName <- group_by(betas_by_gene, UCSC_RefGene_Name, CHR, CpG_Name) %>%
  summarise(
    No_Loci=  n_distinct(CDX1),
    CDX1_mean= mean(CDX1),
    CDX1_sd= sd(CDX1),
    CDX1_pcent_dev= (sd(CDX1)/mean(CDX1))*100,
    CDX3_mean= mean(CDX3),
    CDX3_sd= sd(CDX3),
    CDX3_pcent_dev= (sd(CDX3)/mean(CDX3))*100,
    CDX3P_mean= mean(CDX3P),
    CDX3P_sd= sd(CDX3P),
    CDX3P_pcent_dev= (sd(CDX3P)/mean(CDX3P))*100,
    CDX4_mean= mean(CDX4),
    CDX4_sd= sd(CDX4),
    CDX4_pcent_dev= (sd(CDX4)/mean(CDX4))*100,
    CDX7_mean= mean(CDX7),
    CDX7_sd= sd(CDX7),
    CDX7_pcent_dev= (sd(CDX7)/mean(CDX7))*100,
    CDX8_mean= mean(CDX8),
    CDX8_sd= sd(CDX8),
    CDX8_pcent_dev= (sd(CDX8)/mean(CDX8))*100,
    CDX8P_mean= mean(CDX8P),
    CDX8P_sd= sd(CDX8P),
    CDX8P_pcent_dev= (sd(CDX8P)/mean(CDX8P))*100,
    CDX10_mean= mean(CDX10),
    CDX10_sd= sd(CDX10),
    CDX10_pcent_dev= (sd(CDX10)/mean(CDX10))*100,
    CDX12_mean= mean(CDX12),
    CDX12_sd= sd(CDX12),
    CDX12_pcent_dev= (sd(CDX12)/mean(CDX12))*100,
    CDX13_mean= mean(CDX13),
    CDX13_sd= sd(CDX13),
    CDX13_pcent_dev= (sd(CDX13)/mean(CDX13))*100,
    CDX14P_mean= mean(CDX14P),
    CDX14P_sd= sd(CDX14P),
    CDX14P_pcent_dev= (sd(CDX14P)/mean(CDX14P))*100,
    CDX15P_mean= mean(CDX15P),
    CDX15P_sd= sd(CDX15P),
    CDX15P_pcent_dev= (sd(CDX15P)/mean(CDX15P))*100,
    Mean_pcent_sd= sum(CDX1_pcent_dev, CDX3_pcent_dev, CDX3P_pcent_dev, CDX4_pcent_dev, CDX7_pcent_dev, CDX8_pcent_dev, CDX8P_pcent_dev, CDX10_pcent_dev, CDX12_pcent_dev, CDX13_pcent_dev, CDX14P_pcent_dev, CDX15P_pcent_dev)/12
  ) %>%  #is mean %SD the best measure, or should I use the max SD?
  filter(Mean_pcent_sd <= 10)
betas_by_gene <- filter(betas_by_gene, !(UCSC_RefGene_Name %in% grouped_CpGName$UCSC_RefGene_Name & CHR %in% grouped_CpGName$CHR & CpG_Name %in% grouped_CpGName$CpG_Name))

betas_by_gene3 <- betas_by_gene

grouped_CpGiRelation <- group_by(betas_by_gene, UCSC_RefGene_Name, CHR, CpG_Name, Relation_to_UCSC_CpG_Island) %>%
  summarise(
    No_Loci=  n_distinct(CDX1),
    CDX1_mean= mean(CDX1),
    CDX1_sd= sd(CDX1),
    CDX1_pcent_dev= (sd(CDX1)/mean(CDX1))*100,
    CDX3_mean= mean(CDX3),
    CDX3_sd= sd(CDX3),
    CDX3_pcent_dev= (sd(CDX3)/mean(CDX3))*100,
    CDX3P_mean= mean(CDX3P),
    CDX3P_sd= sd(CDX3P),
    CDX3P_pcent_dev= (sd(CDX3P)/mean(CDX3P))*100,
    CDX4_mean= mean(CDX4),
    CDX4_sd= sd(CDX4),
    CDX4_pcent_dev= (sd(CDX4)/mean(CDX4))*100,
    CDX7_mean= mean(CDX7),
    CDX7_sd= sd(CDX7),
    CDX7_pcent_dev= (sd(CDX7)/mean(CDX7))*100,
    CDX8_mean= mean(CDX8),
    CDX8_sd= sd(CDX8),
    CDX8_pcent_dev= (sd(CDX8)/mean(CDX8))*100,
    CDX8P_mean= mean(CDX8P),
    CDX8P_sd= sd(CDX8P),
    CDX8P_pcent_dev= (sd(CDX8P)/mean(CDX8P))*100,
    CDX10_mean= mean(CDX10),
    CDX10_sd= sd(CDX10),
    CDX10_pcent_dev= (sd(CDX10)/mean(CDX10))*100,
    CDX12_mean= mean(CDX12),
    CDX12_sd= sd(CDX12),
    CDX12_pcent_dev= (sd(CDX12)/mean(CDX12))*100,
    CDX13_mean= mean(CDX13),
    CDX13_sd= sd(CDX13),
    CDX13_pcent_dev= (sd(CDX13)/mean(CDX13))*100,
    CDX14P_mean= mean(CDX14P),
    CDX14P_sd= sd(CDX14P),
    CDX14P_pcent_dev= (sd(CDX14P)/mean(CDX14P))*100,
    CDX15P_mean= mean(CDX15P),
    CDX15P_sd= sd(CDX15P),
    CDX15P_pcent_dev= (sd(CDX15P)/mean(CDX15P))*100,
    Mean_pcent_sd= sum(CDX1_pcent_dev, CDX3_pcent_dev, CDX3P_pcent_dev, CDX4_pcent_dev, CDX7_pcent_dev, CDX8_pcent_dev, CDX8P_pcent_dev, CDX10_pcent_dev, CDX12_pcent_dev, CDX13_pcent_dev, CDX14P_pcent_dev, CDX15P_pcent_dev)/12
  ) %>%  #is mean %SD the best measure, or should I use the max SD?
  filter(Mean_pcent_sd <= 10)
betas_by_gene <- filter(betas_by_gene, !(UCSC_RefGene_Name %in% grouped_CpGiRelation$UCSC_RefGene_Name & CHR %in% grouped_CpGiRelation$CHR & CpG_Name %in% grouped_CpGiRelation$CpG_Name & Relation_to_UCSC_CpG_Island %in% grouped_CpGiRelation$Relation_to_UCSC_CpG_Island))

betas_by_gene4 <- betas_by_gene

grouped_RefGenegroup <- group_by(betas_by_gene, UCSC_RefGene_Name, CHR, CpG_Name, Relation_to_UCSC_CpG_Island, UCSC_RefGene_Group) %>%
  summarise(
    No_Loci=  n_distinct(CDX1),
    CDX1_mean= mean(CDX1),
    CDX1_sd= sd(CDX1),
    CDX1_pcent_dev= (sd(CDX1)/mean(CDX1))*100,
    CDX3_mean= mean(CDX3),
    CDX3_sd= sd(CDX3),
    CDX3_pcent_dev= (sd(CDX3)/mean(CDX3))*100,
    CDX3P_mean= mean(CDX3P),
    CDX3P_sd= sd(CDX3P),
    CDX3P_pcent_dev= (sd(CDX3P)/mean(CDX3P))*100,
    CDX4_mean= mean(CDX4),
    CDX4_sd= sd(CDX4),
    CDX4_pcent_dev= (sd(CDX4)/mean(CDX4))*100,
    CDX7_mean= mean(CDX7),
    CDX7_sd= sd(CDX7),
    CDX7_pcent_dev= (sd(CDX7)/mean(CDX7))*100,
    CDX8_mean= mean(CDX8),
    CDX8_sd= sd(CDX8),
    CDX8_pcent_dev= (sd(CDX8)/mean(CDX8))*100,
    CDX8P_mean= mean(CDX8P),
    CDX8P_sd= sd(CDX8P),
    CDX8P_pcent_dev= (sd(CDX8P)/mean(CDX8P))*100,
    CDX10_mean= mean(CDX10),
    CDX10_sd= sd(CDX10),
    CDX10_pcent_dev= (sd(CDX10)/mean(CDX10))*100,
    CDX12_mean= mean(CDX12),
    CDX12_sd= sd(CDX12),
    CDX12_pcent_dev= (sd(CDX12)/mean(CDX12))*100,
    CDX13_mean= mean(CDX13),
    CDX13_sd= sd(CDX13),
    CDX13_pcent_dev= (sd(CDX13)/mean(CDX13))*100,
    CDX14P_mean= mean(CDX14P),
    CDX14P_sd= sd(CDX14P),
    CDX14P_pcent_dev= (sd(CDX14P)/mean(CDX14P))*100,
    CDX15P_mean= mean(CDX15P),
    CDX15P_sd= sd(CDX15P),
    CDX15P_pcent_dev= (sd(CDX15P)/mean(CDX15P))*100,
    Mean_pcent_sd= sum(CDX1_pcent_dev, CDX3_pcent_dev, CDX3P_pcent_dev, CDX4_pcent_dev, CDX7_pcent_dev, CDX8_pcent_dev, CDX8P_pcent_dev, CDX10_pcent_dev, CDX12_pcent_dev, CDX13_pcent_dev, CDX14P_pcent_dev, CDX15P_pcent_dev)/12
  ) %>%  #is mean %SD the best measure, or should I use the max SD?
  filter(Mean_pcent_sd <= 10)
betas_by_gene <- filter(betas_by_gene, !(UCSC_RefGene_Name %in% grouped_RefGenegroup$UCSC_RefGene_Name & CHR %in% grouped_RefGenegroup$CHR & CpG_Name %in% grouped_RefGenegroup$CpG_Name & Relation_to_UCSC_CpG_Island %in% grouped_RefGenegroup$Relation_to_UCSC_CpG_Island & UCSC_RefGene_Group %in% grouped_RefGenegroup$UCSC_RefGene_Group))

betas_by_gene5 <- betas_by_gene

grouped_seqbins <- betas_by_gene %>%
  mutate(segment = cut(grouped_seqbins$start, breaks = seq(0,250000000, by=500))) %>%
  group_by(CHR, segment) %>%
  summarise(
    No_Loci=  n_distinct(CDX1),
    CDX1_mean= mean(CDX1),
    CDX1_sd= sd(CDX1),
    CDX1_pcent_dev= (sd(CDX1)/mean(CDX1))*100,
    CDX3_mean= mean(CDX3),
    CDX3_sd= sd(CDX3),
    CDX3_pcent_dev= (sd(CDX3)/mean(CDX3))*100,
    CDX3P_mean= mean(CDX3P),
    CDX3P_sd= sd(CDX3P),
    CDX3P_pcent_dev= (sd(CDX3P)/mean(CDX3P))*100,
    CDX4_mean= mean(CDX4),
    CDX4_sd= sd(CDX4),
    CDX4_pcent_dev= (sd(CDX4)/mean(CDX4))*100,
    CDX7_mean= mean(CDX7),
    CDX7_sd= sd(CDX7),
    CDX7_pcent_dev= (sd(CDX7)/mean(CDX7))*100,
    CDX8_mean= mean(CDX8),
    CDX8_sd= sd(CDX8),
    CDX8_pcent_dev= (sd(CDX8)/mean(CDX8))*100,
    CDX8P_mean= mean(CDX8P),
    CDX8P_sd= sd(CDX8P),
    CDX8P_pcent_dev= (sd(CDX8P)/mean(CDX8P))*100,
    CDX10_mean= mean(CDX10),
    CDX10_sd= sd(CDX10),
    CDX10_pcent_dev= (sd(CDX10)/mean(CDX10))*100,
    CDX12_mean= mean(CDX12),
    CDX12_sd= sd(CDX12),
    CDX12_pcent_dev= (sd(CDX12)/mean(CDX12))*100,
    CDX13_mean= mean(CDX13),
    CDX13_sd= sd(CDX13),
    CDX13_pcent_dev= (sd(CDX13)/mean(CDX13))*100,
    CDX14P_mean= mean(CDX14P),
    CDX14P_sd= sd(CDX14P),
    CDX14P_pcent_dev= (sd(CDX14P)/mean(CDX14P))*100,
    CDX15P_mean= mean(CDX15P),
    CDX15P_sd= sd(CDX15P),
    CDX15P_pcent_dev= (sd(CDX15P)/mean(CDX15P))*100,
    Mean_pcent_sd= sum(CDX1_pcent_dev, CDX3_pcent_dev, CDX3P_pcent_dev, CDX4_pcent_dev, CDX7_pcent_dev, CDX8_pcent_dev, CDX8P_pcent_dev, CDX10_pcent_dev, CDX12_pcent_dev, CDX13_pcent_dev, CDX14P_pcent_dev, CDX15P_pcent_dev)/12
  ) %>%  #is mean %SD the best measure, or should I use the max SD?
  filter(Mean_pcent_sd <= 10) 
