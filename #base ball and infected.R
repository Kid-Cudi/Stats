# Q: How often will someone who comes into contact with someone withs strep throat become infected?
# A: About 15% of the time

#What is the average number of kids, out of 4, who become infected by coming into contact with an infected child
#Component: A random number from 0 to 1 representing contact with an infected person
#anything less than .15 means they got infected 

  
#Trial: 4 random numbers representing the four children who could possibly become infected

#Response
#The number of children out of four who have gotten infected

#Statistic 
# Average number of children who will become infected 

num_trials <- 10000 
num_infectedchildren <- 0
for(i in 1:num_trials){
  infected <- 0
  #expose 4 children
  children <- runif(4)  
  infected <- length(which(children <= .15))
  num_infectedchildren <- num_infectedchildren + infected
  
}
sprintf("according to this simulation, about %.2f kids out of 4 will become infected", num_infectedchildren/num_trials)


#What is the average number of kids, out of 4, who become infected by coming into contact with an infected child
#Component: A random number from 0 to 1 representing contact with an infected person
#anything less than .15 means they got infected 

#Trial: 4 random numbers representing the four children who could possibly become infected

#Response
#Did two children get infected yes or no

#Statistic 
# The proportition of trials to the point of exactly two children becoming infected

num_trials <- 10000 
num_infectedchildren <- 0
for(i in 1:num_trials){
  infected <- 0
  #expose 4 children
  children <- runif(4)  
  infected <- length(which(children <= .15)==2)
  num_infectedchildren <- num_infectedchildren + infected
}
sprintf("according to this simulation the probability of two children getting infected is about %.2f", num_infectedchildren/num_trials)



#Component: A random number from 0 to 1 representing contact with an infected person
#anything less than .15 means they got infected 

#Trial A series of 4 random numbers representng exposed children 

#Response Did atleast two children get infected yes/no

#Statistic The proportion of trials exposed children where two or more children become infected


num_trials <- 10000 
num_infectedchildren <- 0
for(i in 1:num_trials){
  infected <- 0
  #expose 4 children
  children <- runif(4)  
  infected <- length(which(children <= .15)>=2)
  num_infectedchildren <- num_infectedchildren + infected
}
sprintf("according to this simulation the probability of two or more children getting infected is about %.2f", num_infectedchildren/num_trials)


