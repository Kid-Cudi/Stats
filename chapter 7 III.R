 #############
 ###25
##############
 
 ##A. The explantory variable x, the response variable y. 
  ## The explantory variable is size the reponse variable is price
 ##b## - 1000$ per square feet 
 ##c##  I think that the slope positive.  
 
 ######
 #26
 ###
 
## A.  The explantory variable is Drop, the response variable is duration
 #B  Secounds per feet 
 #C I think the slope is positive because a larger drop means a longer duration
 
 ## 31. 
 #A. Price increases by 0.061 per additional sq ft
 #B 230.82 thousand dollars
 #c I would expect to pay 121002 thousand dollars on this house
 # the asking price of the house if 115002 thousand dollars 
 # the 6000 is called the residule 
 price<-function(size){
  return(47.82+.061*size) 
 }
 estimate<-price(3000)
 #c
 price<-function(size){
   return(47.82+0.061*size)
   
 }
   estimate<-price(1200)
 
 #32 
 #A For every one foot the duration of the ride will increase by .180 secounds
 #B 100.232 seconds
 
 
duration <- function(Drop){
  return(64.232+0.180*Drop)
}

estimate <- duration(200)
 
#C This is shorter then I would expect, it is shorter by 28.768 secounds
 
 duration <- function(Drop){
   return(64.232+0.180*Drop)
 }
 
 estimate <- duration(150)
 
 #41 
 #nictoine-hat = .154030+.065052*tar
 #B It would contain .414238 amount of nicotine
 Cig<- function(TR) {
   return(.154030 + .065052*TR)
 }
 
 estimate <- Cig(4)
 #c For every 0.0655052 amount of tar it will contain .154030 amount of nicotine
 
 #D
 