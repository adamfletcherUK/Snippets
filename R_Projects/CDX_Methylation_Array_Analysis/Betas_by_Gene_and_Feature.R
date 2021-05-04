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
  filter(CHR != "X", CHR != "Y") %>% #removes CHR X and Y
  filter(grepl("MIR", UCSC_RefGene_Name)) %>% #To Test with a massive gene
  #filter(is.na(UCSC_RefGene_Name)) %>%
  group_by(CHR, UCSC_RefGene_Name, Relation_to_UCSC_CpG_Island, UCSC_RefGene_Group, UCSC_CpG_Islands_Name, add = TRUE) %>%
  summarise(
    CDX8_B= mean(CDX8),
    CDX8sdev= sd(CDX8),
    CDX8count = n_distinct(CDX8),
    CDX8min = min(CDX8),
    CDX8P_B= mean(CDX8P),
    CDX8Psdev= sd(CDX8P),
    CDX8Pcount = n_distinct(CDX8P),
    CDX8Pmin = min(CDX8P), 
    B_change= CDX8P_B - CDX8_B,   ##this highlights regions with loci = 1 use bayian estimation to weight samples with more loci
    CDX3= mean(CDX3),
    CDX3P= mean(CDX3P),
    CDX4= mean(CDX4),
    CDX7= mean(CDX7),
    CDX8= mean(CDX8),
    CDX8P= mean(CDX8P),
    CDX10= mean(CDX10),
    CDX12= mean(CDX12),
    CDX13= mean(CDX13),
    CDX14P= mean(CDX14P),
    CDX15P= mean(CDX15P)
  )

ggplot(data = betas_by_gene) +
  geom_point(aes(CDX8count, CDX8_B))



tapply(betas_by_gene$CDX1, group_by(
  UCSC_RefGene_Name, 
  Relation_to_UCSC_CpG_Island, 
  UCSC_RefGene_Group, 
  UCSC_CpG_Islands_Name),
  FUN = mean
)

groupings <- as.data.frame(xtabs(
  ~UCSC_RefGene_Name + Relation_to_UCSC_CpG_Island + UCSC_RefGene_Group + UCSC_CpG_Islands_Name, 
  data = betas_by_gene))
application <- as.data.frame(tapply(betas_by_gene$CDX1, list(betas_by_gene$UCSC_RefGene_Name, betas_by_gene$Relation_to_UCSC_CpG_Island, betas_by_gene$UCSC_RefGene_Group, betas_by_gene$UCSC_CpG_Islands_Name), FUN= mean))
