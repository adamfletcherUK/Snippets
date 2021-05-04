library(tidyverse)
setwd("~/Desktop/Meth Array Data ")

dive_beta <- read.csv("OUTPUT_annotated_beta.csv") %>%
  select(2, 25:36)

sundar_beta <- read.csv("OUTPUT_Sundar_CpGLandscape_Beta.csv") %>%
  select(2, 34:41, 43:50, 52:59) 
colnames(sundar_beta)[1] <- "CpG.Index"

# Get Mean B values: Dive Data
dive_mean <- vector()
for (i in 2:ncol(dive_beta)){
  dive_mean[i] <- mean(dive_beta[,i])
} 
# dive_mean[1] <- "mean_bvalue"

dive_name <- vector()
for (i in 2:ncol(dive_beta)){
  dive_name[i] <- colnames(dive_beta[i])
} 
dive_name[1] <- "sample_ID"

df_dive_mean <- data.frame(dive_name, dive_mean)
df_dive_mean = df_dive_mean[-1,]
colnames(df_dive_mean)[1] <- "sample_name"
colnames(df_dive_mean)[2] <- "mean_bvalue"
df_dive_mean$sample_type <- "CDX"

# Get Mean B values: Sundar Data
sundar_mean <- vector()
for (i in 2:ncol(sundar_beta)){
  sundar_mean[i] <- mean(sundar_beta[,i], na.rm = TRUE)
} 
# sundar_mean[1] <- "mean_bvalue"

sundar_name <- vector()
for (i in 2:ncol(sundar_beta)){
  sundar_name[i] <- colnames(sundar_beta[i])
} 
sundar_name[1] <- "sample_ID"
df_sundar_mean <- data.frame(sundar_name, sundar_mean)
df_sundar_mean = df_sundar_mean[-1,]
colnames(df_sundar_mean)[1] <- "sample_name"
colnames(df_sundar_mean)[2] <- "mean_bvalue"

df_sundar_mean$sample_type <- NA
for (i in 1:nrow(df_sundar_mean)){
  if (grepl("NS", df_sundar_mean$sample_name[i])){
    df_sundar_mean$sample_type[i] <- "NoS"
  } else if (grepl("COP", df_sundar_mean$sample_name[i])){
    df_sundar_mean$sample_type[i] <- "COP"
  } else {df_sundar_mean$sample_type[i] <- "Smk"}
}

df_mean_betas <- rbind(df_dive_mean, df_sundar_mean)

ggplot(df_mean_betas) +
  geom_violin(mapping = aes(x= sample_type, y= mean_bvalue)) +
  stat_summary(
    mapping = aes(x= sample_type, y= mean_bvalue),
    fun.ymin = min,
    fun.ymax = max,
    fun.y = median) +
  geom_point(mapping = aes(x= sample_type, y= mean_bvalue), shape = 18) +
  labs(x = 'Sample Type',y = 'Mean B Value', title = 'Mean B-value for CDXs vs other sample types') +
  theme_bw()
  
output <- vector()
colnames(dive_beta)[2] <- "CDX_1"
colnames(dive_beta)[3] <- "CDX_3"
colnames(dive_beta)[4] <- "CDX_4"
colnames(dive_beta)[5] <- "CDX_3P"
colnames(dive_beta)[6] <- "CDX_8"
colnames(dive_beta)[7] <- "CDX_8P"
colnames(dive_beta)[8] <- "CDX_7"
colnames(dive_beta)[9] <- "CDX_10"
colnames(dive_beta)[10] <- "CDX_12"
colnames(dive_beta)[11] <- "CDX_13"
colnames(dive_beta)[12] <- "CDX_14P"
colnames(dive_beta)[13] <- "CDX_15P"
colnames(sundar_beta)[2] <- "NoS_1"
colnames(sundar_beta)[3] <- "NoS_2"
colnames(sundar_beta)[4] <- "NoS_3"
colnames(sundar_beta)[5] <- "NoS_4"
colnames(sundar_beta)[6] <- "NoS_5"
colnames(sundar_beta)[7] <- "NoS_6"
colnames(sundar_beta)[8] <- "NoS_7"
colnames(sundar_beta)[9] <- "NoS_8"
colnames(sundar_beta)[10] <- "Smk_1"
colnames(sundar_beta)[11] <- "Smk_2"
colnames(sundar_beta)[12] <- "Smk_3"
colnames(sundar_beta)[13] <- "Smk_4"
colnames(sundar_beta)[14] <- "Smk_5"
colnames(sundar_beta)[15] <- "Smk_6"
colnames(sundar_beta)[16] <- "Smk_7"
colnames(sundar_beta)[17] <- "Smk_8"
colnames(sundar_beta)[18] <- "COP_1"
colnames(sundar_beta)[19] <- "COP_2"
colnames(sundar_beta)[20] <- "COP_3"
colnames(sundar_beta)[21] <- "COP_4"
colnames(sundar_beta)[22] <- "COP_5"
colnames(sundar_beta)[23] <- "COP_6"
colnames(sundar_beta)[24] <- "COP_7"
colnames(sundar_beta)[25] <- "COP_8"

merged_beta <- merge(dive_beta, sundar_beta, by = "CpG.Index", all = TRUE) %>%
  gather(sample_name, mean_bvalue, CDX_1:COP_8, na.rm = TRUE) %>%
  mutate(sample_type =NA)
merged_beta$sample_type <- sapply(merged_beta$sample_name, substring, 1, 3)

# for (i in 1:nrow(merged_beta)){
#   if (grepl("CDX", merged_beta$sample_name[i])){
#     merged_beta$sample_type[i] <- "CDX"
#     } else if (grepl("NS", merged_beta$sample[i])){
#       merged_beta$sample_type[i] <- "non_smoker"
#     } else if (grepl("COPD", merged_beta$sample[i])){
#       merged_beta$sample_type[i] <- "COPD"
#     } else {
#       merged_beta$sample_type[i] <- "smoker"
#     }
# }

ggplot(merged_beta) +
  geom_violin(mapping = aes(x= sample_type, y= mean_bvalue, fill= sample_type)) +
  geom_boxplot(data = df_mean_betas, mapping = aes(x= sample_type, y= mean_bvalue), width = 0.1) +
  geom_jitter(data = df_mean_betas, mapping = aes(x= sample_type, y= mean_bvalue), shape = 18) +
  labs(x = 'Sample Type',y = 'Mean B Value', title = 'Mean B-value for CDXs vs other sample types') +
  theme_bw() +
  coord_flip()

dive_gathered <- gather(dive_beta, sample_name, bvalue, CDX_1:CDX_15P, na.rm = TRUE)

ggplot() +
  geom_density(data = dive_gathered, aes(x= bvalue)) +
  facet_wrap(~ dive_gathered$sample_name) +
  labs(x = 'B Value',y = 'Density', title = 'B-value Density of the CDX Models') +
  theme_bw()