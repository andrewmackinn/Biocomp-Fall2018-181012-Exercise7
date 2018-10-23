setwd("/Users/andrewmackinnon/Desktop/R/")

#1 Print odd rows of a dataframe
oddrows =function(file){
  dataframe =  read.csv(file, sep =",")
  rows= nrow(dataframe)
  odds= seq(from = 1,to = rows, by=2)
  return(dataframe[odds,])
}

oddrows("iris.csv")

# 2 Return number of observations for a given species
rows = function(file,species){
  dataframe = read.csv(file, sep = ",")
  unique(dataframe$Species)
  num = nrow(dataframe[dataframe$Species == species,])
  return(num)
}
rows("iris.csv", "setosa")


# 3 Return a datagrame for flowers with Sepal Width greater than specified amount

sepal = function(file,width){
  dataframe = read.csv(file, sep = ",")
  frame = dataframe[dataframe$Sepal.Width>width,]
  return(frame)
}
sepal("iris.csv", "3")

# 4 Write the data for a given species to a commad delim. file w/species as file name

specieswrite = function(file,species){
  dataframe= read.csv(file, sep = ",")
  x = dataframe[dataframe$Species==species,]
  filename= paste(species, ".csv", sep = "")
  write.csv (x, file = filename)
}

specieswrite ("iris.csv","setosa")
