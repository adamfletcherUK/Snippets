library(tidyverse)
library(nycflights13)

# Data Transformation ---------------------------------------------------------------
flights <- nycflights13::flights

delayed_2hr <- filter(flights, arr_delay >= 120)
houson_arrivals <- filter(flights, dest == "HOU" | dest == "IAH")
houson_arrivals2 <- filter(flights, dest %in% c("HOU", "IAH"))
UAD_flights <- filter(flights, carrier %in% c("UA", "AA", "DL"))
summer_flights <- filter(flights, month %in% c(7, 8 , 9))
arrive_late_depart_ontime <- filter(flights, arr_delay >= 120, dep_delay <= 0)
hour_delay_30mins_madeup <- filter(flights, dep_delay >= 60, (dep_delay - arr_delay) >=30)
midnight_to_six <- filter(flights, dep_time >= 0, dep_time <= 600)
midnight_to_six2 <- filter(flights, between(dep_time, 0, 600))
missing_dep_time <- filter(flights, is.na(dep_time))
missing_at_start <- arrange(flights, desc(is.na(dep_time)))
longest_flight <- filter(flights, distance == max(distance))
shortest_flight <- filter(flights, distance == min(distance))


# Select() Brainstorming --------------------------------------------------

depart_and_arrive1 <- select(flights, dep_time, dep_delay, arr_time, arr_delay)
depart_and_arrive2 <- flights[,c(4, 6, 7, 9)]
column_names <- c("dep_time", "dep_delay", "arr_time", "arr_delay")
depart_and_arrive3 <- select(flights, column_names)

selection <- select(flights, arr_time, arr_time) #2nd value ignored

time_flights <- select(flights, contains("TIME"))
dep_flights <- select(flights, contains("DEP"))


# Mutate() ----------------------------------------------------------------

flights_sml <- select(flights, 
                      year:day, 
                      ends_with("delay"), 
                      distance, 
                      air_time
)
flights_sml <- mutate(flights_sml,
       gain = dep_delay - arr_delay,
       speed = distance / air_time * 60,
       hours = air_time / 60,
       gain_per_hour = gain / hours
)

timings <- select(flights, dep_time, sched_dep_time)

timings <- mutate(timings,
       dep_time_hr = dep_time %/% 100,
       dep_time_min = dep_time %% 100,
       sched_dep_time_hr = sched_dep_time %/% 100,
       sched_dep_time_min = sched_dep_time %% 100)

most_delayed_flights <- arrange(flights, 
                               min_rank(desc(arr_delay))
                               )
          

by_day <- group_by(flights, year, month, day)
summarise(by_day, delay = mean(dep_delay, na.rm = TRUE))





# Pipes -------------------------------------------------------------------
by_dest <- group_by(flights, dest)

delay <- summarise(by_dest,
                   count = n(),
                   dist = mean(distance, na.rm = TRUE),
                   delay = mean(arr_delay, na.rm = TRUE)
)
delay <- filter(delay, count > 20, dest != "HNL")

ggplot(data = delay, mapping = aes(x = dist, y = delay)) +
  geom_point(aes(size = count), alpha = 1/3) +
  geom_smooth(se = FALSE)


delays <- flights %>% 
  group_by(dest) %>% 
  summarise(
    count = n(),
    dist = mean(distance, na.rm = TRUE),
    delay = mean(arr_delay, na.rm = TRUE)
  ) %>% 
  filter(count > 20, dest != "HNL")



not_cancelled <- flights %>% 
  filter(!is.na(dep_delay), !is.na(arr_delay))

not_cancelled %>% 
  group_by(year, month, day) %>% 
  summarise(mean = mean(dep_delay))


delays <- not_cancelled %>% 
  group_by(tailnum) %>% 
  summarise(
    delay = mean(arr_delay)
  )

ggplot(data = delays, mapping = aes(x = delay)) + 
  geom_freqpoly(binwidth = 10)


delays <- not_cancelled %>% 
  group_by(tailnum) %>% 
  summarise(
    delay = mean(arr_delay, na.rm = TRUE),
    n = n()
  )

ggplot(data = delays, mapping = aes(x = n, y = delay)) + 
  geom_point(alpha = 1/10)

delays %>% 
  filter(n > 25) %>% 
  ggplot(mapping = aes(x = n, y = delay)) + 
  geom_point(alpha = 1/10)


# Lahman ------------------------------------------------------------------

library(Lahman)
batting <- as_tibble(Lahman::Batting)

batters <- batting %>% 
  group_by(playerID) %>% 
  summarise(
    ba = sum(H, na.rm = TRUE) / sum(AB, na.rm = TRUE),
    ab = sum(AB, na.rm = TRUE)
  )

batters %>% 
  filter(ab > 100) %>% 
  ggplot(mapping = aes(x = ab, y = ba)) +
  geom_point() + 
  geom_smooth(se = FALSE)

batters %>% 
  arrange(desc(ba)) %>%
  filter(ab > 100) %>% 
  ggplot(mapping = aes(x = ab, y = ba)) +
  geom_point() + 
  geom_smooth(se = FALSE)