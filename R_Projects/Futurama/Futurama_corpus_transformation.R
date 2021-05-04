trans_corpus <- Corpus(VectorSource(Transcript$Line))
toSpace <- content_transformer(function (x , pattern ) gsub(pattern, " ", x))
trans_corpus <- tm_map(trans_corpus, toSpace, "\n")
trans_corpus <- tm_map(trans_corpus, content_transformer(tolower))   # Convert the text to lower case
trans_corpus <- tm_map(trans_corpus, removeNumbers)
trans_corpus <- tm_map(trans_corpus, removeWords, stopwords("english"))
#trans_corpus <- tm_map(trans_corpus, removeWords, c("blabla1", "blabla2")) #remove specific words
trans_corpus <- tm_map(trans_corpus, removePunctuation)
trans_corpus <- tm_map(trans_corpus, stripWhitespace)   # Eliminate extra white spaces
trans_corpus <- tm_map(trans_corpus, stemDocument) #stemming seems to have messed up the words somewhat..
trans_corpus <- tm_map(trans_corpus, stemCompletion)

