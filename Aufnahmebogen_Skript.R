# Hannes Seller, 01.September 2017
# Skript for "Aufnahmebogen Bestandsgebaeude GEWISS"

install.packages("xlsx"); library(xlsx) # make excel files readable

setwd("...") # set to data folder

list <- dir(); list <- list[grepl("*.xl*",list)] # list of all excel files

df1 <- NULL; df2 <- NULL # set up empty data sets

for(i in list){ # copy content of excel files to data frames
  df1 <- rbind(df1, read.xlsx(i, sheetName="Auswertung",as.data.frame=TRUE))  # content from sheet "Auswertung"
  df2 <- rbind(df2, read.xlsx(i, sheetName="Anmerkungen",as.data.frame=TRUE)) # content form sheet "Anmerkungen"
}

write.csv(df1, "Auswertung.csv")  # write csv data file, Auswertungen
write.csv(df2, "Anmerkungen.csv") # write csv data file, Anmerkungen



