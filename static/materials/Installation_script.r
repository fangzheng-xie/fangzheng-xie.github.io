##############################################################
# This R script is used for installing the BayCount package  #
# For MacOS system, there maybe "-lgfortran" and "-lquadmath" errors because of the use of Rcpp, RcppArmadillo. This website offers the solution: http://thecoatlessprofessor.com/programming/rcpp-rcpparmadillo-and-os-x-mavericks-lgfortran-and-lquadmath-error/. Specifically, one first needs to download the official gfortran  for MacOS, then set a path in a file called ~/.R/Makevars to handle compilation. The way is to open terminal and type the following four-lines commands:
#mkdir ~/.R
#cat << EOF >> ~/.R/Makevars
#FLIBS=-L/usr/local/gfortran/lib/gcc/x86_64-apple-darwin16/6.3.0 -L/usr/local/gfortran/lib -lgfortran -lquadmath -lm
#EOF
#If you have encountered the error:
#"math.h" file not found
#Then type the following command:
#xcode-select --install
##############################################################
options(repos = "http://cran.rstudio.com/")
check_Rcpp = require("Rcpp")
if (check_Rcpp == FALSE){ 
  install.packages("Rcpp") 
  y
  }
check_RcppArmadillo = require("RcppArmadillo")
if (check_RcppArmadillo == FALSE){ install.packages("RcppArmadillo") }
check_combinat = require("combinat")
if (check_combinat == FALSE){ install.packages("combinat")}
check_RColorBrewer = require("RColorBrewer")
if (check_RColorBrewer == FALSE){ install.packages("RColorBrewer")}
check_gplots = require("gplots")
if (check_gplots == FALSE){ install.packages("gplots")}
install.packages("BayCount_0.1.0.tar.gz", repos = NULL, type = "source")
options(repos = "http://cran.rstudio.com/")
