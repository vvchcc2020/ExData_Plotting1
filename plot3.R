fecha <- strptime(paste(datos$Date, datos$Time, sep=" "),"%Y-%m-%d %H:%M:%S")

with(datos,plot(fecha,Sub_metering_1,type = "l",axes=F,ylab = "Energy sub metering",xlab=" "))
with(datos,lines(fecha,Sub_metering_2,type = "l",col="red"))
with(datos,lines(fecha,Sub_metering_3,type = "l",col="blue"))

legend("topright", legend=c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"),
       col=c("black","red", "blue"),cex=0.8,lty=1)

a<- as.numeric(fecha[1])
b<- as.numeric(fecha[1440])
c<- as.numeric(fecha[2880])

axis(1,c(a,b,c),c("Thu","Fri","Sat"))
axis(2)
box()

dev.copy(png,file="plot3.png",width=480, height=480)
dev.off()
