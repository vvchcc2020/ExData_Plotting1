fecha <- strptime(paste(datos$Date, datos$Time, sep=" "),"%Y-%m-%d %H:%M:%S")

with(datos,plot(fecha,Global_active_power,type = "l",axes=F,ylab = "Global Active Power (kilowatts)",xlab=" "))

a<- as.numeric(fecha[1])
b<- as.numeric(fecha[1440])
c<- as.numeric(fecha[2880])

axis(1,c(a,b,c),c("Thu","Fri","Sat"))
axis(2)
box()

dev.copy(png,file="plot2.png",width=480, height=480)
dev.off()
