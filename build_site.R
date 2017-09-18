#Set our working directory. 
#This helps avoid confusion if our working directory is 
#not our site because of other projects we were 
#working on at the time. 

#Make sure the wd is in ngiangre.github.io/! 
#(Open with RProject)

#convert markdiwn CV
system("./CV/build_CV.sh")

#render your sweet site. 
rmarkdown::render_site()

