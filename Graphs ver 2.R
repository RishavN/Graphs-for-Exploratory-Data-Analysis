#=======================================================================================================================
#FUNCTION FOR GRAPHS OF DESIRED VARIABLES
#=======================================================================================================================

#It is not always necessary to create graphs for all the variables. In this function the user will be able to 
#select the variables for which the graphs are needed.


Graphs_v2 = function(data,variable)     #creating the function "Graphs" with two parameter called data and variable
                                        #the parameter data will indicate the dataset for which graphs would be made  
                                        #while variable will indicate the specific columns for which the graphs would be made
{
  for (i in variable)                   #i will specifically take the values of the variable and and the loop will run till the length of the variable
  {
    if(is.numeric(data[,i]))            #the function will take only numerical variables
    {
      png(paste(names(data)[i],".png",sep=""),bg="light grey")
      par(mfrow=c(2,1))
      hist((data[,i]),main = paste("Histogram of",names(data)[i]),xlab = names(data)[i],col = c("blue","sky blue"))
      boxplot((data)[,i], main = paste("Boxplot of",names(data)[i]),ylab= names(data)[i],col = "sea green",horizontal = T)
      dev.off()
    }
  } 
}
Graphs_v2(cars,c(7))
