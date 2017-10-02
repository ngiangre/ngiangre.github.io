#Set our working directory. 
#This helps avoid confusion if our working directory is 
#not our site because of other projects we were 
#working on at the time. 

#Tutorials referenced:
#http://rmarkdown.rstudio.com/rmarkdown_websites.html
#http://nickstrayer.me/RMarkdown_Sites_tutorial/
#https://jules32.github.io/rmarkdown-website-tutorial/index.html
#http://livefreeordichotomize.com/2017/08/08/how-to-make-an-rmarkdown-website/  

#Make sure the wd is in ngiangre.github.io/! 
#(Open with RProject)

#convert markdown CV
system("./CV/build_CV.sh")

#render site. 
rmarkdown::render_site()

