##### Getting arguments ####
args = commandArgs(trailingOnly=TRUE)
input = args[1]
output = args[2]
size = args[3]
positions = args[4]


#Defining the input
vars <- read.csv(file=input, sep="\t", header=F)

#Getting the random numbers to take from the input
randi <- sort(sample(c(1:size), positions, replace = FALSE))


#Taking the input rows from the input
set <- vars[randi,]

#Writing the output to a file
write.table(set,file=output,quote=F,sep="\t",row.names=F,col.names=F)

