# This is a very basic script to setup a very basic working directory on your computer.
# Once you create your Git repository, and in turn created your new Version Control 
# R-Project, move this file into the new project directory and run it.

#install.packages('svDialogs')
#library(svDialogs)

path <- getwd()
path

promptIn <- function()
{ 
  x <- readline(prompt= ("Check your working directory path (printed in the 'Console' 
                         pane at the bottom of the RStudio window. Does it reflect 
                         your new project directory? ('y' = Yes, 'n' = No)"))
  return(x)
}

user.input <- promptIn()

#print(user.input())

# user.input <- dlg_input(message = paste("Check your working directory path ",
#                                         "(printed in the 'Console' pane at the bottom of the ",
#                                         "RStudio window. Does it reflect your new project directory? ", 
#                                         "('y' = Yes, 'n' = No)",sep = ""), gui=.GUI)

if (user.input = "y") {
  print("Great! Beginning new project directory setup.")

  # Create the required directories
  
  if (!(dir.exists(paste(path,'/R', sep = "")))) {
    dir.create(file.path(path, 'R'))
  }
  
  if (!(dir.exists(paste(path,'/Data', sep = "")))) {
    dir.create(file.path(path, 'Data'))
  }
  
  if (!(dir.exists(paste(path,'/Doc', sep = "")))) {
    dir.create(file.path(path, 'Doc'))
  }
  
  if (!(dir.exists(paste(path,'/Figs', sep = "")))) {
    dir.create(file.path(path, 'Figs'))
  }
  
  if (!(dir.exists(paste(path,'/Output', sep = "")))) {
    dir.create(file.path(path, 'Output'))
  }
  
  # Create the readme for each
  
  if (!(file.exists(paste(path,'/R','R_readme.txt', sep = "")))) {
    file.create(file.path(path, '/R/R_readme.txt'))
    fileR<-file(paste(path,'/R/R_readme.txt', sep = ""))
    writeLines(c("This directory is where you should store all of your working R scripts."), fileR)
    close(fileR)
  }
  
  if (!(file.exists(paste(path,'/Data','Data_readme.txt', sep = "")))) {
    file.create(file.path(path, '/Data/Data_readme.txt'))
    fileData<-file(paste(path,'/Data/Data_readme.txt', sep = ""))
    writeLines(paste("This directory is where you should store all of your ORIGINAL data. ",
                     "You should not alter these files whatsoever. Instead, ",
                     "save all of your cleaned/modified data in 'Output'.", sep = ""), fileData)
    close(fileData)
  }
  
  if (!(file.exists(paste(path,'/Doc','Doc_readme.txt', sep = "")))) {
    file.create(file.path(path, '/Doc/Doc_readme.txt'))
    fileDoc<-file(paste(path,'/Doc/Doc_readme.txt', sep = ""))
    writeLines(paste("This directory is where you should store your draft document. ",
                     "This is where your R-Markdown file (where most of your writing ",
                     "will be done) will be stored.", sep = ""), fileDoc)
    close(fileDoc)
  }
  
  if (!(file.exists(paste(path,'/Figs','Figs_readme.txt', sep = "")))) {
    file.create(file.path(path, '/Figs/Figs_readme.txt'))
    fileFigs<-file(paste(path,'/Figs/Figs_readme.txt', sep = ""))
    writeLines(paste("This is where you should store any figures (in .png format).", sep = ""), fileFigs)
    close(fileFigs)
  }
  
  if (!(file.exists(paste(path,'/Output','Output_readme.txt', sep = "")))) {
    file.create(file.path(path, '/Output/Output_readme.txt'))
    fileOutput<-file(paste(path,'/Output/Output_readme.txt', sep = ""))
    writeLines(paste("This is where you should write any modified data to throughout your analysis.", sep = ""), fileOutput)
    close(fileOutput)
  }
  
}

if(user.input="n") {
  print("Ok, seems like you have a problem. Check your working directory and try again.")
  
}