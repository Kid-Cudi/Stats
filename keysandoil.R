#QEstimate the average number of wells that need to be drilled in order to strike oil.

#Component:
#A random number between 0 and 1 representing the act of digging a well 
#If less then .2 they struck oil

#Trial 
# A series of random numbers representing wells, until one strikes oil

#Response
# The number of wells at the end of a trial

#Statistic
# Average number of wells


num_trials <- 1000
total_wells <- 0
strikeoil <- FALSE
for(i in 1:num_trials){
  num_wells <- 0
  #strikeoil
  while(!strikeoil){
    well <-runif(1)
    if(well <= .2){
      strikeoil <- TRUE
    }
    num_wells<- num_wells + 1
    
  }
  print(num_wells)
  total_wells<-total_wells + num_wells
  strikeoil <- FALSE
}
sprintf(" The average number of wells needed to be drilled to hit oil is %.2f",total_wells / num_trials)



#Question What is the probability that it will take fewer than 3 attempts to strike oil?

#Component:
# A random number between 0 and 1 representing the act of digging a well
#if less then .2 they struck oil

#Trial
#A series of random numbers representing wells, until one strikes oil

#Response
# Did it take fewer then 3 attempts to strike oil? True/False

#Statistic
# proportion of trials that took less then three wells to strike oil 


num_trials <- 1000
strikeoil <- FALSE
totalunder_3 <- 0
for(i in 1:num_trials){
  num_wells <- 0
  #strikeoil
  while(!strikeoil){
    well <-runif(1)
    if(well <= .2){
      strikeoil <- TRUE
    }
    if(num_wells <= 3){
      totalunder_3 <- totalunder_3 + 1
    }
  }
  num_wells<- num_wells + 1
  print(num_wells)

  strikeoil <- FALSE
}
sprintf(" The proportion of trials that took less then three wells to strke oil is  %.2f",totalunder_3 / num_trials)




#component
# A key, represented by a random number between 0 and 1, with
#anything less than or equal to 1/n representing the correct 
#key, with n being the number of keys remaining. 

#Trial:
#A series of random numbers, reoreseting keys, until one key works

#Response
#The number of keys tried to open the door

#Statistic
# Average number of keys

num_trials <- 1000
total_keys <- 0
for(i in 1:num_trials){
  num_keys <-8 #have not tried one yet
    open <- FALSE #door is locked
    #Try to open the door
    while(!open){
      #Try to open the door
      attempt <- runif(1)
      if(attempt <= 1/9-num_keys) {
        #The door has been unlocked
        open <- TRUE
      }
  num_keys <- num_keys -1
    }
    keys_tried <- 8 - num_keys
    total_keys <- total_keys +keys_tried
}
sprintf(" The average number of keys this prof needs to go through is %.2f keys",total_keys / num_trials)


#Component: A key representing a number from 0 and 1,
#with anything less then or equal to 1/n representing the correct key, with n being the number of keys remaning

#Trial:
#A series of random numbers, reoreseting keys, until one key works

#Repsponse
# Did it take more then 4 keys to open the door

#Statistic
# The proportion of trials that take more than 4 tries


num_trials <- 1000
total_more_than_four <- 0
for(i in 1:num_trials){
  num_keys <-8 #have not tried one yet
  open <- FALSE #door is locked
  #Try to open the door
  while(!open){
    #Try to open the door
    attempt <- runif(1)
    if(attempt <= 1/num_keys) {
      #The door has been unlocked
      open <- TRUE
    }
    num_keys <- num_keys -1
  }
  keys_tried <- 8 - num_keys
  if(keys_tried >4){
    total_more_than_four <- total_more_than_four +1
    
  }
}
sprintf("According to my simulation, it will take more than four tries about %.2f%% of the time", total_more_than_four*100/ num_trials)
 