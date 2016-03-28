#20% of boxes contain lebron, 30% Danica, and the rest Serena.
#if you buy 5 boxes of cereal, what is the probabbility you
#end up with a full set of pictures?

#Component:
#A single random number, 0-1, with 0-.2 representing Lebron,
#.2-.5 representing Dancica, and anything else Serena. 

#Trial:
# A series of 5 random numbers, representing boxes of cereal.

#Response 
#Did you get a complete set? ( True/False)

# Statistic:
# Proportion of trials in which you get a complete set.
 
num_trials <- 100
num_full_sets <= 0
for(i in 1:num_trials){
  #buy 5 boxes of cereal
  boxes <- runif(5)
  #check for lebron 
  if(length(which(boxes < .2))  > 0 ){
    
    #found lebron
    #now check for Danica
    if(length(which(boxes >= .2 & boxes <.5)) >0){
      #found danica
      #check for Serena
      if(length(which(boxes >= .5)) > 0){
        #found serena
        #full set
        num_full_sets <- num_full_sets +1 
        
        
      }
      
    }
  
  }
  sprintf("According to my simulation, you would get a full set about %.1%% of the time ")
  
}
