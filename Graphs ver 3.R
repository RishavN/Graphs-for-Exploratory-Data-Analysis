#========================================================================================================================
#IF THE VARIABLE IS IGNORED THEN THE FUNCTION TAKES ALL THE VARIABLES INTO ACCOUNT
#=========================================================================================================================


#This is a modification to the prevous function (Graphs_v2). If we ignore the variable parameter this function will create
#graphs for all the variables. It will also create bar diagram for categorical variable



Graphs_v3 = function(data,variable=1:ncol(data))      #The function is created with a default for the variable. 
                                                      #If the variable is ignored graphs are made for all the columns
{
  
  for (i in variable) {
  
    if(is.numeric(data[,i]))
    {
      png(paste(names(data)[i],".png",sep = ""),bg = "light grey")
      
      par(mfrow=c(2,1))
      
      hist((data)[,i],main = paste("Histogram of",names(data)[i]),xlab = names(data)[i],col = c("green","light green"))
      
      boxplot((data)[,i],main = paste("Boxplot of",names(data)[i]),ylab= names(data)[i],col = "blue",horizontal = T)
      
      dev.off()
    }
    else{
      #if the data is not numerical we make barplots
      
      png(paste(names(data)[i],".png",sep = ""),bg = "light grey")
      
      barplot(table(data[i]),main = paste("Barplot of",names(data)[i]),xlab = names(data)[i],col=c("yellow","gold"))
      
      #we directly use the table function to make te data ready for barplot. barplot can take vector or matrix only
      
      dev.off()
    }
  }
}

Graphs_v3(cars,c(1,7,9))
Graphs_v3(cars)


