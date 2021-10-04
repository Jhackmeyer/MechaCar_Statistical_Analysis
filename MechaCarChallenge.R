library(dplyr)
mechaCar_data_df <- read.csv(file='resources/MechaCar_mpg.csv', check.names=F, stringsAsFactors = F)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechaCar_data_df)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechaCar_data_df))

suspension_coil_df <- read.csv(file='resources/Suspension_Coil.csv', check.names=F, stringsAsFactors = F)
suspension_summary <- suspension_coil_df %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI),SD=sd(PSI), .groups='keep')
lot_summary <- suspension_coil_df %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI),SD=sd(PSI), .groups='keep')

t_all <- t.test(suspension_coil_df$PSI, mu=1500)
t_1 <- t.test(subset(suspension_coil_df, Manufacturing_Lot=="Lot1")$PSI, mu=1500)
t_2 <- t.test(subset(suspension_coil_df, Manufacturing_Lot=="Lot2")$PSI, mu=1500)
t_3 <- t.test(subset(suspension_coil_df, Manufacturing_Lot=="Lot3")$PSI, mu=1500)

p_table <- data.frame("All"=t_all$p.value, "Lot 1"=t_1$p.value, "Lot 2"=t_2$p.value, "Lot 3"=t_3$p.value)
rownames(p_table) <- c("p-Values")
