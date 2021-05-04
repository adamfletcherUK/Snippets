##### Title #####
## Plots for Beta Values from Sundar dataset against CDX dataset ##
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

##### Load Datasets #####



##### Frequency Plot: NonSmokers #####

ggplot() +
  geom_density(data = Sundar_Betas,
               aes(x=NS_1_B),
               colour = "light grey") +
  geom_density(data = Sundar_Betas,
               aes(x=NS_2_B),
               colour = "light grey") +
  geom_density(data = Sundar_Betas,
               aes(x=NS_3_B),
               colour = "light grey") +
  geom_density(data = Sundar_Betas,
               aes(x=NS_4_B),
               colour = "light grey") +
  geom_density(data = Sundar_Betas,
               aes(x=NS_5_B),
               colour = "light grey") +
  geom_density(data = Sundar_Betas,
               aes(x=NS_6_B),
               colour = "light grey") +
  geom_density(data = Sundar_Betas,
               aes(x=NS_7_B),
               colour = "light grey") +
  geom_density(data = Sundar_Betas,
               aes(x=NS_8_B),
               colour = "light grey") +
  geom_density(data = Sundar_Betas,
               aes(x=NS_Mean),
               colour = "Black") +
  xlim(-0.1,1.1) +
  ylim(0,3.5) +
  labs(x = 'Beta Value',y = 'Density', title = 'Chromosomal B-value Distribution of Sundar Non-Smokers') +
  # theme(panel.grid.minor = element_blank(), 
  #       panel.background = element_blank(), 
  #       axis.line = element_line(colour = "black"), 
  #       panel.grid.major = element_line(colour = "light grey")) +
  theme_bw()

##### Frequency Plot: Smokers #####

ggplot() +
  geom_density(data = Sundar_Betas,
               aes(x=S_1_B),
               colour = "light grey") +
  geom_density(data = Sundar_Betas,
               aes(x=S_2_B),
               colour = "light grey") +
  geom_density(data = Sundar_Betas,
               aes(x=S_3_B),
               colour = "light grey") +
  geom_density(data = Sundar_Betas,
               aes(x=S_4_B),
               colour = "light grey") +
  geom_density(data = Sundar_Betas,
               aes(x=S_5_B),
               colour = "light grey") +
  geom_density(data = Sundar_Betas,
               aes(x=S_6_B),
               colour = "light grey") +
  geom_density(data = Sundar_Betas,
               aes(x=S_7_B),
               colour = "light grey") +
  geom_density(data = Sundar_Betas,
               aes(x=S_8_B),
               colour = "light grey") +
  geom_density(data = Sundar_Betas,
               aes(x=S_Mean),
               colour = "Black") +
  xlim(-0.1,1.1) +
  ylim(0,3.5) +
  labs(x = 'Beta Value',y = 'Density', title = 'Chromosomal B-value Distribution of Sundar Smokers') +
  # theme(panel.grid.minor = element_blank(), 
  #       panel.background = element_blank(), 
  #       axis.line = element_line(colour = "black"), 
  #       panel.grid.major = element_line(colour = "light grey")) +
  theme_bw()


##### Frequency Plot: COPD #####

ggplot() +
  geom_density(data = Sundar_Betas,
               aes(x=COPD_1_B),
               colour = "light grey") +
  geom_density(data = Sundar_Betas,
               aes(x=COPD_2_B),
               colour = "light grey") +
  geom_density(data = Sundar_Betas,
               aes(x=COPD_3_B),
               colour = "light grey") +
  geom_density(data = Sundar_Betas,
               aes(x=COPD_4_B),
               colour = "light grey") +
  geom_density(data = Sundar_Betas,
               aes(x=COPD_5_B),
               colour = "light grey") +
  geom_density(data = Sundar_Betas,
               aes(x=COPD_6_B),
               colour = "light grey") +
  geom_density(data = Sundar_Betas,
               aes(x=COPD_7_B),
               colour = "light grey") +
  geom_density(data = Sundar_Betas,
               aes(x=COPD_8_B),
               colour = "light grey") +
  geom_density(data = Sundar_Betas,
               aes(x=COPD_Mean),
               colour = "Black") +
  xlim(-0.1,1.1) +
  ylim(0,3.5) +
  labs(x = 'Beta Value',y = 'Density', title = 'Chromosomal B-value Distribution of Sundar COPD Patients') +
  # theme(panel.grid.minor = element_blank(), 
  #       panel.background = element_blank(), 
  #       axis.line = element_line(colour = "black"), 
  #       panel.grid.major = element_line(colour = "light grey")) +
  theme_bw()

##### Frequency Plot: Mean Smoker, Nonsmoker and COPD #####

ggplot() +
  geom_density(data = Sundar_Betas,
               aes(x=NS_Mean),
               colour = "Green") +
  geom_density(data = Sundar_Betas,
               aes(x=S_Mean),
               colour = "Red") +
  geom_density(data = Sundar_Betas,
               aes(x=COPD_Mean),
               colour = "Blue") +
  xlim(-0.1,1.1) +
  ylim(0,3) +
  labs(x = 'Beta Value',y = 'Density', title = 'B-value Distribution of Sundar Patients') +
  # theme(panel.grid.minor = element_blank(), 
  #       panel.background = element_blank(), 
  #       axis.line = element_line(colour = "black"), 
  #       panel.grid.major = element_line(colour = "light grey")) +
  theme_bw()







##### Frequency Plot: By CHR #####
ggplot() +
  geom_density(data = annotated_sundar_beta,
               aes(x=NS_Mean),
               colour = "Green")+
  geom_density(data = annotated_sundar_beta,
               aes(x=S_Mean),
               colour = "Red") +
  geom_density(data = annotated_sundar_beta,
               aes(x=COPD_Mean),
               colour = "Blue") +
  xlim(-0.1,1.1) +
  ylim(0,3) +
  labs(x = 'Beta Value',y = 'Density', title = 'Chromosomal B-value Distribution of Sundar Dataset') +
  theme_bw() +
  facet_wrap(~ annotated_sundar_beta$CHR,
             nrow = 5,
             ncol = 5)

##### Frequency Plot: By Feature #####
ggplot() + 
  geom_density(data = annotated_sundar_beta,
               aes(x=NS_Mean),
               colour = "Green")+
  geom_density(data = annotated_sundar_beta,
               aes(x=S_Mean),
               colour = "Red") +
  geom_density(data = annotated_sundar_beta,
               aes(x=COPD_Mean),
               colour = "Blue") +
  labs(x = 'Beta Value',y = 'Density', title = 'B-value Distribution of Sundar Datasetby Feature') +
  theme_bw() +
  facet_wrap(~ annotated_sundar_beta$Relation_to_UCSC_CpG_Island,
             nrow = 2,
             ncol = 3)
##### Number of Feature Occurances #####
sundar_islands <- nrow(subset(annotated_sundar_beta, annotated_sundar_beta$Relation_to_UCSC_CpG_Island == "Island"))
sundar_shelves <- nrow(subset(annotated_sundar_beta, annotated_sundar_beta$Relation_to_UCSC_CpG_Island == "N_Shelf")) +
  nrow(subset(annotated_sundar_beta, annotated_sundar_beta$Relation_to_UCSC_CpG_Island == "S_Shelf"))
sundar_shores <- nrow(subset(annotated_sundar_beta, annotated_sundar_beta$Relation_to_UCSC_CpG_Island == "N_Shore")) +
  nrow(subset(annotated_sundar_beta, annotated_sundar_beta$Relation_to_UCSC_CpG_Island == "S_Shore"))
