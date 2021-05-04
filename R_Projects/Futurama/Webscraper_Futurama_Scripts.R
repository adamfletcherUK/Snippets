# Futurama Webscraper and Character Analysis
# Adam Fletcher
# 180912

#### Prerequisites ####
# Loading/ Installing Packages
requiredPackages <- c("tidyverse", "rvest", "tm", "SnowballC", "wordcloud", "readr", "udpipe", "lattice", "tidytext", "syuzhet", "reshape2", "igraph", "tokenizers")
ipak <- function(pkg){
  new.pkg <- pkg[!(pkg %in% installed.packages()[, "Package"])]
  if (length(new.pkg))
    install.packages(new.pkg, dependencies = TRUE)
  sapply(pkg, require, character.only = TRUE)
}
ipak(requiredPackages)

# Additional Tools
# Use of the SelectorGadget CSS selector tags

#### Generate Episode List ####
EpisodeList <- readLines(paste0
                     ("https://theinfosphere.org/Episode_Listing")) %>%
  as.data.frame() %>%
  filter(grepl("<td class=\"oLeft\"> <b><a href=", .)) %>%
  separate(".", c("A", "B", "Episodes", "D"), sep= "=", extra = "drop", fill = "right") %>%
  select(3)
EpisodeList <- as.data.frame(
  substring(EpisodeList$Episodes, 3, nchar(EpisodeList$Episodes)-7))
colnames(EpisodeList)[1] <- "Episodes"
for (i in 1:nrow(EpisodeList)) {EpisodeList$Cumulative_episode[i] <- i}
#### Add in Seasonal Information ####
for (i in 1:nrow(EpisodeList)){
  if (i <= 13) {
    EpisodeList$Season[i] <- 1
    EpisodeList$Episode_No[i] <- i }
  if (i > 13 & i <= 32) {
    EpisodeList$Season[i] <- 2
    EpisodeList$Episode_No[i] <- i - 13}
  if (i > 32 & i <= 54) {
    EpisodeList$Season[i] <- 3
    EpisodeList$Episode_No[i] <- i - 32}
  if (i > 54 & i <= 72) {
    EpisodeList$Season[i] <- 4
    EpisodeList$Episode_No[i] <- i - 54}
  if (i > 72 & i <= 88) {
    EpisodeList$Season[i] <- 5
    EpisodeList$Episode_No[i] <- i - 72}
  if (i > 88 & i <= 114) {
    EpisodeList$Season[i] <- 6
    EpisodeList$Episode_No[i] <- i - 88}
  if (i > 114 & i <= 140) {
    EpisodeList$Season[i] <- 7
    EpisodeList$Episode_No[i] <- i - 114}
} 



#### Extract Transcripts ####
for (i in 1:nrow(EpisodeList)) {
# for (i in 1:3) {  #Testing line
  message("Scraping Episode ", i)
  # Getting Episode Transcript
  url <- paste0("https://theinfosphere.org/Transcript:", EpisodeList$Episodes[i])
  webpage <- read_html(url)
  EpisodeLines <- html_nodes(webpage,'p') %>%
    html_text()
  templines <- as.data.frame(EpisodeLines)
  templines$Cumulative_episode <- EpisodeList$Cumulative_episode[i]
  templines$Season <- EpisodeList$Season[i]
  templines$Episode_no <- EpisodeList$Episode_No[i]
  if (i == 1) {FuturamaLines <- templines} else {FuturamaLines <- rbind(FuturamaLines, templines)}
  #Not all Transcripts completed on Infosphere. They will be subsequently removed
  }
write.csv(FuturamaLines, "~/Documents/GitHub/R_scripts/FuturamaLines.csv")

#### Cleanup HTML Tags from Data ####
Transcript <- FuturamaLines
Transcript <- gsub("\\D\\d\\d:\\d\\d\\D", "", Transcript$EpisodeLines)
Transcript <- gsub("⨂", "", Transcript)
Transcript <- gsub("[[].*?[]]", "", Transcript)
Transcript <- gsub("[(].*?[)]", "", Transcript)
Transcript <- gsub("[<].*?[>]", "", Transcript)
Transcript <- cbind(as.data.frame(Transcript), FuturamaLines$Cumulative_episode, FuturamaLines$Season, FuturamaLines$Episode_no) %>%
  separate(Transcript, c("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P"), sep= ":", extra = "drop", fill = "right") 
Ommisions <- Transcript[-rowSums(is.na(Transcript)) == 0,]
for (i in 1:(nrow(Ommisions))) {Transcript <- filter(Transcript, Transcript$B != Ommisions$B[i])}
EpisodeInfo <- data.frame(Transcript$`FuturamaLines$Cumulative_episode`, Transcript$`FuturamaLines$Season`, Transcript$`FuturamaLines$Episode_no`)
Transcript <- unite(Transcript, Line, B:P, sep = ":")
Lines_vector <- gsub(":NA", "", Transcript$Line)
Transcript <- data.frame(Transcript$A, Lines_vector) 
Transcript$Line_length <- nchar(as.character(Transcript$Lines_vector))
colnames(Transcript)[1] <- "Character"
colnames(Transcript)[2] <- "Line"
Transcript <- cbind(Transcript, EpisodeInfo)
colnames(Transcript)[4] <- "Cumulative_episode"
colnames(Transcript)[5] <- "Season"
colnames(Transcript)[6] <- "Episode_no"
Transcript <- filter(Transcript, Line_length < 1000) # Removes textdump where character cannot be determined

#### Cleanup Grammatical Errors ####
Transcript$Character <- gsub("\"", "", Transcript$Character)
Transcript$Character <- gsub("\'", "", Transcript$Character)
Transcript$Character <- gsub("’’", "", Transcript$Character)
Transcript$Character <- gsub("’’", "", Transcript$Character)
Transcript$Character <- gsub(".*?[,].*?[-->].*?[,].*?"[ ], "", Transcript$Character)
Transcript$Character <- gsub("\\d\\d\\d", "", Transcript$Character)

#### Fixing Duplicate Names and Errors ####
Transcript$Character <- gsub("Amy Wong", "Amy", Transcript$Character)
Transcript$Character <- gsub("Al Gores head", "Al Gore", Transcript$Character)
Transcript$Character <- gsub("ALL", "All", Transcript$Character)
Transcript$Character <- gsub("Amy ", "Amy", Transcript$Character)
Transcript$Character <- gsub("Announcer", "Announcer #1", Transcript$Character)
Transcript$Character <- gsub("Bee", "Bee #1", Transcript$Character)
Transcript$Character <- gsub("Beeler", "Ben Beeler", Transcript$Character)
Transcript$Character <- gsub("Bender   ", "Bender", Transcript$Character)
Transcript$Character <- gsub("Bender doll", "Bender Doll", Transcript$Character)
Transcript$Character <- gsub("Bender duplicate", "Bender Duplicate #1", Transcript$Character)
Transcript$Character <- gsub("Billionarebot", "Billionare Bot", Transcript$Character)
Transcript$Character <- gsub("Bret", "Brett", Transcript$Character)
Transcript$Character <- gsub("Cryogenisist", "Cryogenicist", Transcript$Character)
Transcript$Character <- gsub("David Farsnworths head", "David Farsnworth", Transcript$Character)
Transcript$Character <- gsub("Decapodian Man", "Decapodian Man #1", Transcript$Character)
Transcript$Character <- gsub("Decapodian Woman", "Decapodian Woman #1", Transcript$Character)
Transcript$Character <- gsub("Decapodian Woman", "Decapodian Woman #1", Transcript$Character)
Transcript$Character <- gsub("Director", "Director #1", Transcript$Character)
Transcript$Character <- gsub("Fanrsworth", "Farnsworth", Transcript$Character)
Transcript$Character <- gsub("Farnswoth", "Farnsworth", Transcript$Character)
Transcript$Character <- gsub("Farsnworth", "Farnsworth", Transcript$Character)
Transcript$Character <- gsub("Fat-Bot", "Fatbot", Transcript$Character)
Transcript$Character <- gsub("Female voice", "Female Voice", Transcript$Character)
Transcript$Character <- gsub("Fembot", "Fembot #1", Transcript$Character)
Transcript$Character <- gsub("Frida Waterfall", "Frida", Transcript$Character)
Transcript$Character <- gsub("Frieda Waterfall", "Frida", Transcript$Character)
Transcript$Character <- gsub("Fry ", "Fry", Transcript$Character)
Transcript$Character <- gsub("George Takei ", "George Takei", Transcript$Character)
Transcript$Character <- gsub("George Takeis head ", "George Takei", Transcript$Character)
Transcript$Character <- gsub("Guard", "Guard #1", Transcript$Character)
Transcript$Character <- gsub("H. G. Blob", "H.G. Blob", Transcript$Character)
Transcript$Character <- gsub("Hattie", "Hattie McDoogal", Transcript$Character)
Transcript$Character <- gsub("Hedonism bot", "Hedonism Bot", Transcript$Character)
Transcript$Character <- gsub("Hermes ", "Hermes", Transcript$Character)
Transcript$Character <- gsub("Horrible Gelatinous Blob", "H.G. Blob", Transcript$Character)
Transcript$Character <- gsub("Hutch", "Hutch Waterfall", Transcript$Character)
Transcript$Character <- gsub("Hydroponic farmer", "Hydroponic Farmer", Transcript$Character)
Transcript$Character <- gsub("Judge", "Judge #1", Transcript$Character)
Transcript$Character <- gsub("Killbot", "Killbot #1", Transcript$Character)
Transcript$Character <- gsub("Kwanzaa-bot", "Kwanzaabot", Transcript$Character)
Transcript$Character <- gsub("Kwanzabot", "Kwanzaabot", Transcript$Character)
Transcript$Character <- gsub("LaBarbara", "Labarbara", Transcript$Character)
Transcript$Character <- gsub("Leela ", "Leela", Transcript$Character)
Transcript$Character <- gsub("Male Voice", "Male Voice #1", Transcript$Character)
Transcript$Character <- gsub("Man", "Man #1", Transcript$Character)
Transcript$Character <- gsub("Minx to Zoidberg", "Minx", Transcript$Character)
Transcript$Character <- gsub("Morris Katz", "Katz", Transcript$Character)
Transcript$Character <- gsub("Mr Wong", "Leo", Transcript$Character)
Transcript$Character <- gsub("Mr. Wong", "Leo", Transcript$Character)
Transcript$Character <- gsub("Mr Fry", "Fry", Transcript$Character)
Transcript$Character <- gsub("Mrs Astor", "Mrs. Astor", Transcript$Character)
Transcript$Character <- gsub("Mutant", "Mutant #1", Transcript$Character)
Transcript$Character <- gsub("Nd-Nd", "Ndnd", Transcript$Character)
Transcript$Character <- gsub("Nerd", "Nerd #1", Transcript$Character)
Transcript$Character <- gsub("Nine ", "Nine", Transcript$Character)
Transcript$Character <- gsub("Old man", "Old Man", Transcript$Character)
Transcript$Character <- gsub("OTHERS", "Others", Transcript$Character)
Transcript$Character <- gsub("Photographer", "Photographer #1", Transcript$Character)
Transcript$Character <- gsub("Professor ", "Professor", Transcript$Character)
Transcript$Character <- gsub("Professor Farnsoworth", "Farnsworth", Transcript$Character)
Transcript$Character <- gsub("Professor Farnsworth", "Farnsworth", Transcript$Character)
Transcript$Character <- gsub("Professor Farnsworth", "Farnsworth", Transcript$Character)
Transcript$Character <- gsub("Robot", "Robot #1", Transcript$Character)
Transcript$Character <- gsub("Robot Monks, including Bender", "Robot Monks", Transcript$Character)
Transcript$Character <- gsub("Ruth Bader Ginsburgs head", "Ruth Bader Ginsburg", Transcript$Character)
Transcript$Character <- gsub("Salesman", "Salesman #1", Transcript$Character)
Transcript$Character <- gsub("Schumlp", "Schlump", Transcript$Character)
Transcript$Character <- gsub("Schumlp", "Schlump", Transcript$Character)
Transcript$Character <- gsub("Security woman", "Security Woman", Transcript$Character)
Transcript$Character <- gsub("Sergeant ", "Sergeant", Transcript$Character)
Transcript$Character <- gsub("Sergeant ", "Sergeant", Transcript$Character)
Transcript$Character <- gsub("Snoop Doggs head", "Snoop Doggs", Transcript$Character)
Transcript$Character <- gsub("Soda machine", "Soda Machine", Transcript$Character)
Transcript$Character <- gsub("Soldier", "Soldier #1", Transcript$Character)
Transcript$Character <- gsub("Suicide booth", "Suicide Booth", Transcript$Character)
Transcript$Character <- gsub("Superhero from The Beast with the Billion Backs", "Super Hero", Transcript$Character)
Transcript$Character <- gsub("Takei", "George Takei", Transcript$Character)
Transcript$Character <- gsub("Thomas Jeffersons head", "Thomas Jefferson", Transcript$Character)
Transcript$Character <- gsub("Underwater house salesman", "Underwater House Salesman", Transcript$Character)
Transcript$Character <- gsub("Wermstrom", "Wernstrom", Transcript$Character)
Transcript$Character <- gsub("Wermstrom", "Wernstrom", Transcript$Character)
Transcript$Character <- gsub("Woman", "Woman #1", Transcript$Character)
Transcript$Character <- gsub("Yancy Fry, Jr.", "Yancy", Transcript$Character)
Transcript$Character <- gsub("Yancy Fry Jr.", "Yancy", Transcript$Character)
Transcript$Character <- gsub("Zapp Brannigan", "Zapp", Transcript$Character)
Transcript$Character <- gsub("Zapp Brannigan", "Zapp", Transcript$Character)
Transcript$Character <- gsub("ProfessorFarnsworth", "Farnsworth", Transcript$Character)
Transcript$Character <- gsub("Man #1 #1", "Man #1", Transcript$Character)
Transcript$Character <- gsub("Inez", "Mrs. Wong", Transcript$Character)
Transcript$Character <- trimws(Transcript$Character)
#write.csv(Transcript, "~/Documents/GitHub/R_scripts/Cleaned_transcript.csv")


#### Barchart: No lines per character ####



Character_summary <- Transcript %>%
  group_by(Character, Season) %>%
  group_by(Number_Lines= n(), add = TRUE) %>%
  filter(Number_Lines > 100) %>%
  summarise() %>%
  as.data.frame()

lead_chars <- Character_summary$Character

Character_summary <- Transcript %>%
  group_by(Character, Season) %>%
  group_by(Number_Lines= n(), add = TRUE) %>%
  summarise() %>%
  filter(Character %in% lead_chars) %>% #Remove 1 liners
  as.data.frame()

ggplot(data = Character_summary) +
  geom_line(aes(x=Season, y= Number_Lines, colour = Character)) +
  ylab("Number of Lines") +
  theme_bw()




# 
# Total_lines_per_character <- Transcript %>%
#   subset(Character %in% Character_summary$Character)
Total_lines_per_character <- Character_summary[order(-Character_summary$Number_Lines),] %>%
  filter(Number_Lines > 100) %>%
  ggplot() +
    geom_bar(aes(x=Character)) +
    labs(x = 'Character',y = "Number Of Lines") +
    theme(axis.text.x = element_text(angle = 90, hjust = 1, vjust = 0.5))
Total_lines_per_character

#### Extract Characters Lines Function ####
characters_lines <- function(selected_character, df_transcript) {
  character_words <- df_transcript %>%
    filter(Character == selected_character)
  return(character_words)
  }

#### Generate Corpus Function ####
make_corpus <- function(input_transcript){
  trans_corpus <- Corpus(VectorSource(Transcript$Line))
  toSpace <- content_transformer(function (x , pattern ) gsub(pattern, " ", x))
  trans_corpus <- tm_map(trans_corpus, toSpace, "\n")
  trans_corpus <- tm_map(trans_corpus, content_transformer(tolower))   # Convert the text to lower case
  trans_corpus <- tm_map(trans_corpus, removeNumbers)
  trans_corpus <- tm_map(trans_corpus, removeWords, stopwords("english"))
  trans_corpus <- tm_map(trans_corpus, removePunctuation)
  trans_corpus <- tm_map(trans_corpus, stripWhitespace)   # Eliminate extra white spaces
  # Too computationally demanding for my laptop
  # trans_corpus <- tm_map(trans_corpus, stemDocument) #removes the ending of similar words
  # trans_corpus <- stemCompletion(trans_corpus, dictionary = Transcript$Line)
  return(trans_corpus)
}

# Generate Corpus
Futurama_corpus <- make_corpus(Transcript)
Futurama_corpus <- data.frame(text = sapply(Futurama_corpus, as.character), stringsAsFactors = FALSE)

# Sentiment Analysis
emotion_df <- NA
for (i in 1:nrow(Futurama_corpus)){
  if (i == 1){ emotion_df <- get_nrc_sentiment(as.character(Futurama_corpus$text[i]))}
  if (i > 1) { emotion_df <- rbind(emotion_df, get_nrc_sentiment(as.character(Futurama_corpus$text[i])))}
}

# Bind back to original data
Transcript <- cbind(Transcript, Futurama_corpus, emotion_df)
# Get single value for all sentiment
Transcript$Sentiment <- get_sentiment(Transcript$text)


#### Add Previous and Next Character Spoken to by Episode ####
for (i in 1:nrow(Transcript)){
  if (i == 1) {Transcript$PreviousChar[i] <- NA
  } else {
    Transcript$PreviousChar[i] <- Transcript$Character[i-1]}
}

for (i in 1:nrow(Transcript)){
  if (i == nrow(Transcript)) {Transcript$NextChar[i] <- NA
  } else {
    Transcript$NextChar[i] <- Transcript$Character[i+1]}
}


#### Filtering Sentiment by Character #####

#Does All Characters, Need to filter for the top characters
Sentiment_by_char <- Transcript %>%
  subset(Character %in% Character_summary$Character) %>%
  # group_by(Character, Cumulative_episode) %>%
  group_by(Character) %>%
  summarise(
    Mean_sentiment = mean(Sentiment)
  )

ggplot(data = Sentiment_by_char) +
  geom_point(aes(x=Cumulative_episode, y= Mean_sentiment, colour = Character)) +
  geom_smooth(aes(x=Cumulative_episode, y= Mean_sentiment, colour = Character), alpha = 0.5) +
  facet_wrap(~ Character) +
  ylim(-2, 2) +
  scale_x_continuous(breaks = c(0,20,40,60,80,100,120,140)) +
  xlab('Episode Number') +
  ylab('Mean Sentiment') +
  theme_bw()


#Emotions per character
Emotions_by_char <- Transcript %>%
  subset(Character %in% Character_summary$Character) %>%
  group_by(Character) %>%
  summarise(
    Anger = sum(anger),
    Anticipation = sum(anticipation),
    Disgust = sum(disgust),
    Fear = sum(fear),
    Joy = sum(joy),
    Sadness = sum(surprise),
    Trust = sum(trust),
    Negative = sum(negative),
    Positive = sum(positive),
    PtoN_ratio = Positive/Negative,
    Sentiment = sum(Sentiment)
  )


#### Interaction Map of Main Characters ####
Interactions_map <- Transcript %>%
  filter(Character != PreviousChar) %>% #Removing lines where characters interact with themselves
  filter(Character != NextChar) %>%
  filter(Character %in% lead_chars) %>% #Removes all but interactions with other main characters
  acast(Character ~ PreviousChar, fun.aggregate = length)
   

data_matrix <- as.matrix(t(Interactions_map))
total_occurrences <- colSums(t(Interactions_map))
co_occurrence <- t(data_matrix) %*% data_matrix #transpose and matrix multiplication

g <- graph.adjacency(co_occurrence,
                     weighted = TRUE,
                     diag = FALSE,
                     mode = "upper")
g <- simplify(g, remove.multiple = F, remove.loops = T, edge.attr.comb = c(weight = "sum", type = "ignore"))

# Sentiment of Interactions


plot(g,
     vertex.label.family = "Helvetica",
     vertex.label.font = 1,
     vertex.shape = "sphere",
     vertex.size=total_occurrences/100,
     vertex.label.cex=0.8,
     vertex.label.color="black",
     vertex.frame.color = NA,
     edge.width = E(g)$weight/40000,
     edge.curved=.1,
     layout=layout_in_circle)





#### Interactions between larger characters ####
Interactions_map <- Transcript %>%
  filter(Character != PreviousChar) %>% #Removing lines where characters interact with themselves
  filter(Character != NextChar) %>%
  group_by(Character) %>%
  group_by(Number_lines = n(), add = TRUE) %>%
  ungroup()
Interactions_map$character_type = 1
for (i in 1:nrow(Interactions_map)){
  if (Interactions_map$Number_lines[i] > 3000) {Interactions_map$character_type[i] = 1} 
  else if (Interactions_map$Number_lines[i] > 500 & Interactions_map$Number_lines[i] < 300) {Interactions_map$character_type[i] =2}
  else if (Interactions_map$Number_lines[i] > 100 & Interactions_map$Number_lines[i] < 500) {Interactions_map$character_type[i] =3}
  else {Interactions_map$character_type[i] = 4}
  }



Interactions_map <- Interactions_map %>%
  filter(Number_lines > 10) %>%
  acast(Character ~ PreviousChar, fun.aggregate = length)
data_matrix <- as.matrix(t(Interactions_map))
total_occurrences <- colSums(t(Interactions_map))
co_occurrence <- t(data_matrix) %*% data_matrix

g <- graph.adjacency(co_occurrence,
                     weighted = TRUE,
                     diag = FALSE,
                     mode = "upper")
g <- simplify(g, remove.multiple = F, remove.loops = T, edge.attr.comb = c(weight = "sum", type = "ignore"))

plot(g,
     vertex.label.family = "Helvetica",
     vertex.label.font = 1,
     vertex.shape = "sphere",
     vertex.size=total_occurrences/300,
     vertex.label.cex=0.8,
     vertex.label.color="black",
     vertex.frame.color = NA,
     edge.width = E(g)$weight/40000,
     edge.curved=.1,
     layout=layout_in_circle)

#### Change in Interactions over the seasons ####
Interactions_map <- Transcript %>%
  filter(Character != PreviousChar) %>% #Removing lines where characters interact with themselves
  filter(Character != NextChar) %>%
  filter(Character %in% lead_chars) %>% #Removes all but interactions with other main characters
  filter(Season == 7) %>%
  acast(Character ~ PreviousChar, fun.aggregate = length)


data_matrix <- as.matrix(t(Interactions_map))
total_occurrences <- colSums(t(Interactions_map))
co_occurrence <- t(data_matrix) %*% data_matrix

g <- graph.adjacency(co_occurrence,
                     weighted = TRUE,
                     diag = FALSE,
                     mode = "upper")
g <- simplify(g, remove.multiple = F, remove.loops = T, edge.attr.comb = c(weight = "sum", type = "ignore"))

plot(g,
     main = "Season Seven",
     vertex.label.family = "Helvetica",
     vertex.label.font = 1,
     vertex.shape = "sphere",
     vertex.size=total_occurrences/20,
     vertex.label.cex=0.8,
     vertex.label.color="black",
     vertex.frame.color = NA,
     edge.width = E(g)$weight/1000,
     edge.curved=.1,
     edge.color = "gold",
     layout=layout_in_circle)

#### TODO: Which Characters have positive/negative relationships ####

#### Character Dictionaries ####
# Fry's Dictionary
Fry_lines <- Transcript %>%
  filter(Character == "Fry")
Fry_lines <- tokenize_words(as.character(Fry_lines$Line))

for (i in 1:4025){
  if (i == 1){Fry_dictionary <- Fry_lines[[i]]} 
  else {Fry_dictionary <- c(Fry_dictionary, Fry_lines[[i]])} 
}
unique_fry <- unique(Fry_dictionary) #5019 unique words over 4025 lines

# Farnsworths Dictionary
Farnsworth_lines <- Transcript %>%
  filter(Character == "Farnsworth")
Farnsworth_lines <- tokenize_words(as.character(Farnsworth_lines$Line))

for (i in 1:1861){
  if (i == 1){Farnsworth_dictionary <- Farnsworth_lines[[i]]} 
  else {Farnsworth_dictionary <- c(Farnsworth_dictionary, Farnsworth_lines[[i]])} 
}
unique_farnsworth <- unique(Farnsworth_dictionary) #4886 unique words over 1861 lines




#### Misc ####

wordcloud(bender, max.words = 200, random.order = FALSE)




















##### Word Cloud Functions: Currently Nonfunctional #####
#TODO: Remove extra stop words, or filter for nouns, adjs and verbs
to_text_document_matrix <- function(input_transcript){
  trans_corpus <- Corpus(VectorSource(input_transcript$Line))
  toSpace <- content_transformer(function (x , pattern ) gsub(pattern, " ", x))
  trans_corpus <- tm_map(trans_corpus, toSpace, "\n")
  trans_corpus <- tm_map(trans_corpus, content_transformer(tolower))   # Convert the text to lower case
  trans_corpus <- tm_map(trans_corpus, removeNumbers)
  trans_corpus <- tm_map(trans_corpus, removeWords, stopwords("english"))
  #trans_corpus <- tm_map(trans_corpus, removeWords, c("blabla1", "blabla2")) #remove specific words
  trans_corpus <- tm_map(trans_corpus, removePunctuation)
  trans_corpus <- tm_map(trans_corpus, stripWhitespace)   # Eliminate extra white spaces
  trans_corpus <- tm_map(trans_corpus, stemDocument) #stemming seems to have messed up the words somewhat..
  trans_corpus <- tm_map(trans_corpus, stemCompletion) #completes stems back to single word
  # Term document martix
  dtm <- TermDocumentMatrix(trans_corpus)
  m <- as.matrix(dtm)
  v <- sort(rowSums(m),decreasing=TRUE)
  d <- data.frame(word = names(v),freq=v)
    return(d)
    # return(word_cloud_maker(d))
  }
word_cloud_maker <- function(d){
  set.seed(1234)
  return(wordcloud(words = d$word, freq = d$freq, min.freq = 1,
                   max.words=200, random.order=FALSE, rot.per=0.35,
                   colors=brewer.pal(8, "Dark2")))
}
characters_lines <- function(selected_character, df_transcript) {
  character_words <- df_transcript %>%
    filter(Character == selected_character)
    return(to_text_document_matrix(character_words))
  
}

characters_lines("Bender", Transcript)
to_text_document_matrix(Transcript)

