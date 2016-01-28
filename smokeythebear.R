smoke_dat <- read.csv('Smoking.csv')
regr <- lm(smoke_dat$CHD ~ smoke_dat$Cigarette.Consumption )

barplot(smoke_dat$Cigarette.Consumption, names.arg = smoke_dat$Country, las = 2)

barplot(smoke_dat$CHD, names.arg = smoke_dat$Country, las = 2)


plot(smoke_dat$CHD ~ smoke_dat$Cigarette.Consumption, main = "Smoking" , xlab = "cigarette consumption", ylab = "CHD")
abline (regr, col = "Blue")


plot(smoke_dat$Cigarette.Consumption ~ smoke_dat$CHD, main = "Smoking")
abline (regr, col = "Blue")
summary(regr)

#
