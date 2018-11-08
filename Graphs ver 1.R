#======================================================================================================================
#FUNCTION FOR IMPORTING ALL THE HISTOGRAMS AND BOXPLOTS FOR THE GIVEN DATA SET
#======================================================================================================================


#In this function you'll be able to create graphs of all the numeric variables in a present in a dataset



Graphs_v1 = function(data)                                          #creating the function "Graphs" with one parameter called data
{
  for (i in 1:ncol(data))                                           #running the for loop to creat histograms and boxplots for all the variables
  {
    if(is.numeric(data[,i]))                                        #the function will take only numerical variables
    {
      png(paste(names(data)[i],".png",sep = ""),bg = "light grey")  #creating png files of respective names with grey background and storing them in the working directiory 
               
      par(mfrow=c(2,1))                                             #partitioning the canvas . making two rowa and one column so that the graphs fit in one canvas
      
      hist((data)[,i],main = paste("Histogram of",names(data)[i]),xlab = names(data)[i],col = c("red","orange")) 
      #creating histogram of the respective variable of the data. labeling the axis and the heading
      
      boxplot((data)[,i], main = paste("Boxplot of",names(data)[i]),ylab=names(data)[i],col="purple",horizontal = T)
      #creating boxplots
      
      dev.off()
      #turning off png function
    }
  }
}

Graphs_v1(cars)
