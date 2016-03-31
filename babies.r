# Q The average number of kids the family has to have being having a boy

#Component
# A random number of 0 and 1 representing having one child 
# If less then 50% boy else girl 

#Trial 
# A series of random number representing children, until one is a boy

#Reponse
# The number of children it took to make a boy


#Statistic
# Average number of kids

num_trials <- 1000
total_babies <- 0
babyboy <- FALSE 
for(i in 1:num_trials){
  num_babies <-0
  while(!babyboy){
    babies <-runif(1)
    if(babies <=.5){
      babyboy <- TRUE 
    }
    num_babies <-num_babies + 1
  }
  total_babies<-total_babies + num_babies
  babyboy <- FALSE
}
sprintf("The average number of babies that need be made before a boy is made is  %.2f", total_babies/num_trials)


#Q The possibility of having all of the same sex child

#Component
# A random number between 0 and 1 representing having one child
# If less then 50% then boy else its a girl

#Trial
# A series of random numbers representting three children. 

#Response 
#  all three children the same sex True/False 

#Statistic
# Proportion of trials inwhich all three children were the same sex


num_trials <- 1000
total_samesex <- 0
for(i in 1:num_trials){
  babies <- runif(3)
  num_boys <- length(which(babies < .5))
  if(num_boys == 3 | num_boys == 0){
    total_samesex<- total_samesex + 1
  }
}
sprintf("The proporiton of trials in which all three children are the same sex  %.2f", total_samesex/num_trials)




