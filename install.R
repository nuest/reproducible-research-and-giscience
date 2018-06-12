# Install CRAN packages
install.packages("pdftools")
install.packages("tidytext")
install.packages("wordcloud")
install.packages("ggthemes")
install.packages("kableExtra")
install.packages("huxtable")
install.packages("here")
install.packages("gridBase")
install.packages("gridExtra")

# install fixed dev version of tinytex
#install.packages("devtools")
devtools::install_github('yihui/tinytex', ref = "1cce49dee825376b71c4ea7b046980cc05cdc10a")
tinytex::install_tinytex(force = TRUE)

# Install LaTeX packages
tinytex::tlmgr_install("siunitx")
tinytex::tlmgr_install("xcolor")
tinytex::tlmgr_install("colortbl")
tinytex::tlmgr_install("multirow")
tinytex::tlmgr_install("lscape")
tinytex::tlmgr_install("wrapfig")
tinytex::tlmgr_install("float")
