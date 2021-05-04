# Prompt for source dir.
if (exists("choose.dir", mode="function")) {
	cat("\nAny Random Prompting Text you want to add to the R console.\n")
	flush.console()
	dir.location <- choose.dir(caption="Please select source Folder")
} else {
	dir.location <- readline("\nPlease select source Folder")
}

# Run.
Program_function_name(dir.location)



# *** Loading the Extracted Alignmnet Log into a second data frame ***** NOT USED!!!
# - Aim: Prompt for location of Aln_log file and import to dataframe
# - Aim: Eventually re-shuffle columns to put %Chrs as first 3 columns
#
#if (exists("choose.files", mode="function")) {
#	cat("\nSelect the extracted alignment log output csv file.\n")
#	flush.console()
#	alnlog.dir <- choose.files(caption="Select the extracted alignment log output csv file.")
#	setwd(alnlog.dir)
#df.tsadata <- load("AlnLogs_extract_out.Rdata")
#str(df.extracted)

#} else {
#	cat("\nPlease enter source Alignment Log folder. ")
#}