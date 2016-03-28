source("zscorefunction.R")

###########################
# Problem 39 - Normal cattle 
############################

# a)Over 1250 lbs
z <- zscore(1152, 84, 1250)

shadenorm(above=z)
P <- 1 - pnorm(z)
percent <- P*100
sprintf(' About %f of cattle will be over 1250 lbs', percent)

#b ) Under 1200 lbs

z <- zscore(1152, 84, 1200)

P <- pnorm(z)
percent = P*100
sprintf( "according to the normal model, about %f%% of cattle will be under 1200lbs ")

#c between 1000 and 1100lbs 

 z1 <- zscore(1152,84,1000)
 z2 <- zscore(1152,84, 1100)
 shadenorm(between = c(z1, z2))
 P <- pnorm(z2) - pnorm(z1)
 percent = P*100
 sprintf('According to the normal moodel, ')
 
# #############################
 # problem 40- IQS revisited
 ##############################
 
 # a over 80
 
 z <- zscore(100,16, 80)
 shadenorm(above = z)
 P <- 1 - pnorm(z)
 percent <- P*100
 sprintf(' About %f of people will have iqs over 80', percent)
 
 #b under 90
 
 z <- zscore(100,16,90)
 shadenorm(below = z)
 P<- pnorm(z)
 percent = P*100
 sprintf(" according to the normal model about %f%% will have iqs under 90", percent)
 
 #c  between 112 and 132
 
 z1 <- zscore(100,16,112)
 z2 <- zscore(100,16,132)
 shadenorm(between = c(z1, z2))
 P <- pnorm(z2) - pnorm(z1)
 percent = P*100
 sprintf(" according to the normal model about %f%% of people will have iqs between 112 and 132", percent)
 
 
 ###################
 ####41 more cattle 
 ##################
 
 #a) highest 10%
 
 z <- qnorm(1-.1)
 shadenorm(above = z)
weight <- x(z, 1152,84)
sprintf(" according to the normal model the highest 10%% of cattle will weigh over %.1f lbs ", weight)

#b) lowest 20%
z <- qnorm(.2)
shadenorm(below = z)
weight <- x(z, 1152, 84)
sprintf(" according to the normal model the lowest 20%% of all the cattle weight will weigh %.1f lbs", weight)

#c) middle 40%
p = (1-.4)/2
z1 <- qnorm(p)
z2 <- qnorm(.4+p)
shadenorm(between = c(z1, z2))
weight1 <- x(z1, 1152,84)
weight2 <- x(z2, 1152,84)
sprintf("%f, according to the normal model the middle 40%% of all the cattle weight will %f", weight1, weight2)
 
########################
######42 More Iqs
########################

#a the highest 5% of all iqs
z <- qnorm(.05)
shadenorm(above = z)
P <- 1 - pnorm(z)
percent <- P*100
sprintf(" according to the normal model the highest 5%% of all iqs will", percent)

# B The lowest 30% of all the iqs
z <- qnorm(.2)
shadenorm(below = z)
weight <- x(z, 1152, 84)
