library(readr)
library(dplyr)
#Coursera - Learn R Programming- Johns Hopkins University

#Programming assignment 1
#Write a function named 'pollutantmean' that calculates the mean of a pollutant (sulfate or nitrate) across a specified list of monitors. The function 'pollutantmean' 
#takes three arguments: 'directory', 'pollutant', and 'id'. Given a vector monitor ID numbers, 'pollutantmean' reads that monitors' particulate matter data from the 
#directory specified in the 'directory' argument and returns the mean of the pollutant across all of the monitors, ignoring any missing values coded as NA. 

pollutantmean <- function(directory, pollutant, id = 1:332) {
    Liste_Files = list.files(pattern="*.csv");
    Liste_benutz = lapply(lista_tot1, read.csv, sep = ",")  
    Daten_bind <-do.call("rbind", lista_tot2)
    Daten_auswahl <-lista_tot3[is.element(lista_tot3$ID, id),]
    Mittelwert<-mean(Daten_auswahl[[pollutant]], na.rm=TRUE)
    return(Mittelwert)
    
}
