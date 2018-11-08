# Graphs for Exploratory Data Analysis

## Introduction:

Imagine how lengthy the process of exploration might become especially when you are dealing with data sets that contains a large number of variables! I hope you have already started experiencing this tedious process. In this assignment, you will explore some ideas that will help you designing some frameworks that will help you reduce this everyday work to a great extent and save hours and hours of your time. Here you will be creating some user-defined functions that will help you automate such large and tedious processes.

For simplicity, consider that that data that you are working with contains only numerical variables. In order to understand the variables, you may need to plot histogram and/or boxplots for every variable. If you are working with plenty of variables, then generating such graphics separately will certainly be a time consuming process. In this assignment your objective will be to create function/s to automate this enormously large steps. This will give you more time to analyse the graphs rather than to spending a lot of time in generating the same. 

## Task:
Start by creating a very simple framework as suggested below (10 marks).  Then follow the suggestions to make improvements (40 marks). Take yourself beyond these suggestions. Be more and more creative and make the function more useful and make the output look better. (20 marks)
Create a function Graphs as follows:


Graphs(data)


The above function will take a data frame as input and generate and export image files (in the working directory) containing histograms and boxplots for all the numerical variables present in the data frame. The exported graphs should be ‘jpeg’ or ‘png’ files with having file names same as the name of the variables. 


## Improvements

### Improvement 1:
Often, we do not require the graphs for all the numeric variables. Try to improve the code by adding an additional parameter "variable" that can take a vector of variable index and return the graphs for only those variables.

**Example:** 

Graphs(mtcars, [1,3,4])

Will generate the graphics for only the numerical variables among the variables 1, 3 & 4 of the data ‘mtcars’.

### Improvement 2:

Improve the code in suggestion 1 such that if the argument variable is ignored then it will return the graphs of all the numeric variables in the data by default.


### Improvement 3:

Make an additional improvement in the codes you have designed for suggestion 2 such that the function will take the argument "data" and "variable" and will return boxplots & histograms for the numerical variables and bar plots the categorical variables.

**Example:**

Graphs(mtcars)

will get the necessary graphics for all numeric variables and categorical variables in the data ‘mtcars’.


### Improvement 4:

Probably you may not want to create a mess in your working directory with so many image files. Try making another improvement here. Create an additional argument in the function called "dir" (directory), which will enable the function to export all the image files to your specified folder (which need not necessarily be your working directory).

**Example:**

Graphs(Boston, Variable = c(1,3,4), dir = ‘C:\’)

will generate the necessary graphics for the variables 1, 3 and 4 in the ‘C’ folder in my PC.


### Improvement 5:

Create a local package that will hold this function. Instead of running the function every time, load the package and call the function to generate your graphs.

