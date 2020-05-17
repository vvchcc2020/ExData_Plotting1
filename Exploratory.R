library(dplyr)
dat <- household_power_consumption
dim(dat)
print(object.size(dat),units = "Gb")

#dates 2007-02-01 and 2007-02-02
datos <- dat
datos$Date <- as.Date(datos$Date,"%d/%m/%Y")
datos <- datos %>%
  filter(year(Date)==2007 & month(Date)==02 & 
           (day(Date)==1 | day(Date)==2)) 

datos[,-c(1,2)] <- datos[,-c(1,2)] %>% 
    mutate_if(is.character,as.numeric)


