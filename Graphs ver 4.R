#=============================================================================================================================
#CHANGING THE DIRECTORY OTHER THAN THE CURRENT WORKING DIRECTORY
#===================================================================================================================================

#Suppose the user wants to save the graphs in some other directory other than the current working directory.
#this function will take the location of the new directory from the user and save the graphs in the desired directory.



Graphs_v4 = function(data,variable=1:ncol(data),directory=getwd()) #in this function we take a third parameter.
  #this parameter will save the graphs in user specified folder
{
  
  for (i in variable) {
    if(is.numeric(data[,i]))
    {
      png(paste(directory,"\\",names(data)[i],".png",sep = ""),bg="light grey")   #the paste function contains the user specified directory
                                                                                  #plus \\ plus name of the graph image plus .png  This saves
                                                                                  #the file in user specified folder
      par(mfrow=c(2,1))
      hist((data)[,i],main = paste("Histogram of",names(data)[i]),xlab = names(data)[i],col = c("purple1","purple4"))
      boxplot((data)[,i],main = paste("Boxplot of",names(data)[i]),ylab= names(data)[i],col = "blue",horizontal = T)
      dev.off()
    }
    else{
      png(paste(directory,"\\",names(data)[i],".png",sep = ""),bg = "light grey")
      barplot(table(data[i]),main = paste("Barplot of",names(data)[i]),xlab = names(data)[i],col=c("yellow","gold"))
      dev.off()
    }
    
  } 
}
Graphs_v4(cars,variable = c(2),directory ="C:\\Users\\Rishav\\Desktop\\graphs5")