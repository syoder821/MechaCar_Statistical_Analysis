library(dplyr)
MechaCar_mpg <- read.csv('Resources/MechaCar_mpg.csv',stringsAsFactors = F) #read in dataset
head(MechaCar_mpg)

#generate multiple linear regression model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_mpg)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_mpg))

Suspension_Coil <- read.csv('Resources/Suspension_Coil.csv',stringsAsFactors = F) #read in dataset
head(Suspension_Coil)

summarize(Suspension_Coil, PSI_mean=mean(PSI), PSI_median=median(PSI), PSI_variance=var(PSI), PSI_SD=sd(PSI))

by_lot_num <- Suspension_Coil %>% group_by(Manufacturing_Lot)

summarize(Suspension_Coil %>% group_by(Manufacturing_Lot), PSI_mean=mean(PSI), PSI_median=median(PSI), PSI_variance=var(PSI), PSI_SD=sd(PSI))


t.test(Suspension_Coil$PSI,mu=1500)

lot1 <- subset(Suspension_Coil, Manufacturing_Lot == "Lot1") 
t.test(lot1$PSI ,mu=1500)

lot2 <- subset(Suspension_Coil, Manufacturing_Lot == "Lot2") 
t.test(lot2$PSI ,mu=1500)

lot3 <- subset(Suspension_Coil, Manufacturing_Lot == "Lot3") 
t.test(lot3$PSI ,mu=1500)
