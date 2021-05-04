#### Accessing Spotify Data ####
#### Adam Fletcher
#### 13 May 2019


#### Prerequisites ####
requiredPackages <- c("tidyverse", "spotifyr", "knitr", "ggjoy")
ipak <- function(pkg){
  new.pkg <- pkg[!(pkg %in% installed.packages()[, "Package"])]
  if (length(new.pkg))
    install.packages(new.pkg, dependencies = TRUE)
  sapply(pkg, require, character.only = TRUE)
}
ipak(requiredPackages)

Sys.setenv(SPOTIFY_CLIENT_ID = '4f8d5156adaf46f4bfbeba3df1550238')
Sys.setenv(SPOTIFY_CLIENT_SECRET = 'd992819b1d6040ecb6ce4611e854e33c')

access_token <- get_spotify_access_token()

#### Data Import ####

death_grips_albums <- c("The Money Store", "No Love Deep Web", "Government Plates", "The Powers That B", "Bottomless Pit", "Year Of The Snitch")

song_data <- get_album_data(artist = "Death Grips", albums = death_grips_albums)



joy <- get_artist_audio_features('red hot chilli peppers')
joy <- rbind(joy, get_artist_audio_features('metallica'))
joy <- rbind(joy, get_artist_audio_features('taylor swift'))
joy <- rbind(joy, get_artist_audio_features('babymetal'))
joy <- rbind(joy, get_artist_audio_features('bts'))
joy <- rbind(joy, get_artist_audio_features('disturbed'))

joy %>% 
  arrange(-valence) %>% 
  select(artist_name, track_name, valence) %>% 
  head(5) %>% 
  kable()

ggplot(joy, aes(x = valence, y = artist_name)) + 
  geom_joy() + 
  theme_joy() +
  ggtitle("Joyplot of Joy Division's joy distributions", subtitle = "Based on valence pulled from Spotify's Web API with spotifyr")


analysis <- get_track_audio_analysis('3bIQIx7hveYPQDdhjZ1kcq')
