devtools::install_github('rstudio/rmarkdown')
library(rmarkdown)
setwd("~/Dropbox/Projects/Personal_Website")







#Render the site
render_site()

#Creates a PDF of the CV
render("cv.Rmd", "pdf_document",output_file="./_site/cv_Alex_Singleton.pdf")

tufte_handout("cv.Rmd")


#Inserts a download link to the PDF CV
conn<-file("./_site/cv.html")
text <- readLines(conn)
close(conn)
d_link <- "<li><i class='fa fa-download' aria-hidden='true'></i><a href='cv_Alex_Singleton.pdf'> Download CV (pdf)</a></li>"
text_new <- c(text[1:290],d_link,text[291:length(text)])
write(text_new, file = "./_site/cv.html")


#Copy Website & Source
loc<- "/Users/alex/alexsingleton/"
system(paste("cp -a",paste0(getwd(),"/_site/."), loc)) #Copy rendered website
loc<- "/Users/alex/personal_site_source/"
system(paste("cp -a",paste0(getwd(),"/."), loc)) #Copy source


#GIT Website
loc<- "/Users/alex/alexsingleton/"
system(paste0("cd ",loc," && git add .")) #add files to the staging area
system("git remote add origin ssh://git@github.com:alexsingleton/alexsingleton.github.io.git") #set the origin - note; need to setup the SSH
system(paste0("cd ",loc," && git commit -m 'Website update'")) #commit changes
system(paste0("cd ",loc," && git push -u origin master")) #Push

#Source
loc<- "/Users/alex/personal_site_source/"
system(paste0("cd ",loc," && git add .")) #add files to the staging area
system("git remote add origin ssh://git@github.com:alexsingleton/personal_site_source.git") #set the origin - note; need to setup the SSH
system(paste0("cd ",loc," && git commit -m 'Website source update'")) #commit changes
system(paste0("cd ",loc," && git push -u origin master")) #Push

system("git remote set-url origin git@github.com:alexsingleton/personal_site_source.git")

test2



