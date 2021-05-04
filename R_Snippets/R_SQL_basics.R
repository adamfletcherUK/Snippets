data(mtcars)
library(RSQLite)
conn <- dbConnect(SQLite(),'mycars.db')
dbWriteTable(conn, "cars", mtcars)
dbListFields(conn, "cars")
make <- gsub(' .*$', '', rownames(mtcars)) # grabs the manufacters ID from car model
dbGetQuery(conn, "ALTER TABLE cars ADD COLUMN manuf (",  make, ")", sep="")") 
dbGetQuery(conn, "SELECT * FROM cars WHERE row_names LIKE 'Merc%'")

mtcars$make <- gsub(' .*$', '', rownames(mtcars))