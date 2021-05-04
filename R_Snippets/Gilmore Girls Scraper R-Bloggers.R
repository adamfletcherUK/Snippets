thepage <- readLines(paste0("http://www.crazy-internet-people.com/site/gilmoregirls/pages/s1/s1s/1.html"))
thepage <- thepage[grep("^[[:upper:]]+:", thepage)]  # grabbing character lines only