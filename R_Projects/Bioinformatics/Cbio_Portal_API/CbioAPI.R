library(cgdsr)
library(stringr)
# Create CGDS object
mycgds = CGDS("http://www.cbioportal.org/public-portal/")
test(mycgds)

# Get list of cancer studies at server
getCancerStudies(mycgds)

# Get available case lists (collection of samples) for a given cancer study
mycancerstudy = getCancerStudies(mycgds) 
#Outputs a yes/no based on cancer type, change name to alter cancer type
cancer.bool  <- str_count(mycancerstudy$name,  'Small Cell Lung Cancer')
mycancerstudy$cancer.bool <- cancer.bool
mycancerstudy <- subset(mycancerstudy, (cancer.bool == 1))
write.csv(mycancerstudy, 'mycancerstudy.csv')
no.cols <- nrow(mycancerstudy)
studyID <- mycancerstudy$cancer_study_id
mygeneticprofile = ""  #this clears any data in mygeneticprofile but shouldn't be needed

############
## Get Genetic Profiles
############

for(i in 1:no.cols) #makes a loop to get genetic profiles for each cancer study
{  
  profileloop = getGeneticProfiles(mycgds, studyID[i])
  mygeneticprofile = rbind(mygeneticprofile, profileloop)
}
write.csv(mygeneticprofile, 'mygeneticprofile.csv')

###########
## Get Mutation Data (Needs to be about a specific gene)
###########

mutationprofile = ""

for(i in 1:no.cols)
{
  mutationloop = getMutationData(mycgds, studyID[i], mygeneticprofile[i]) #genetic profile part doesn't work
  mutationprofile = rbind(mutationprofile, mutationloop)
}
write.csv(mutationprofile, 'mutationprofile.csv')


#can't currently bind mycancerstudy and mygeneticprofile as there is no true shared field!!


##############################################

#This part of the demo script isn't needed but is included incase it is needed later
# Get data slices for a specified list of genes, genetic profile and case list
#getProfileData(mycgds,c('BRCA1','BRCA2'),mygeneticprofile,mycaselist)

# Get clinical data for the case list
myclinicaldata = getClinicalData(mycgds,mycaselist)

# documentation
help('cgdsr')
help('CGDS')