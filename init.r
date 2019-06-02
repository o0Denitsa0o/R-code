PC <- "Denitsa"	#"Denitsa"	# "other"	# 

# folders - variables are used to avoid typing the whole path to files
# folders (directories) MUST exist! (create folders if missing)

if (PC == "Denitsa") {
# Load utility subroutine
# utility_functions.txt == 3 states of nature, utility_functions_.txt == 2 states of nature.
  source("C:\\MABCC\\Program\\utility_functions.txt", echo = TRUE, print.eval =FALSE)
# source("C:\\MABCC\\Program\\utility_functions_.txt", echo = TRUE, print.eval =FALSE)
  source("C:\\MABCC\\Program\\utility_functions_2.txt", echo = TRUE, print.eval =FALSE)
  source("C:\\MABCC\\Program\\utility_functions_3.txt", echo = TRUE, print.eval =FALSE)

# Loading packages for econometric estimation
  library("plm", lib.loc="C:/Users/Denitsa/Documents/R/win-library/2.15")
  library("nls2", lib.loc="C:/Users/Denitsa/Documents/R/win-library/2.15")
  library("minpack.lm", lib.loc="C:/Users/Denitsa/Documents/R/win-library/2.15")
# + 25.03.15
library("mvnmle", lib.loc="C:/Users/Denitsa/Documents/R/win-library/2.15")
library("MASS", lib.loc="C:/Users/Denitsa/Documents/R/win-library/2.15")
# - 25.03.15

# + 14.04.15
library("tmvtnorm", lib.loc="C:/Users/Denitsa/Documents/R/win-library/2.15")
# - 14.04.15

  biophy_data_dir <- "C:\\MABCC\\Data\\Biophy\\"	
  economy_data_dir <- "C:\\MABCC\\Data\\Economy\\"	
  res_dir <- "C:\\MABCC\\Data\\Results\\"
} else
{
# Load utility subroutine
# source("D:\\Deni\\Sofia_14_11_15\\Sofia_14_12_22\\program\\utility_functions.txt", echo = TRUE, print.eval =FALSE)
  source("D:\\Deni\\MABCC\\MABCC\\Program\\utility_functions.txt", echo = TRUE, print.eval =FALSE)
  source("D:\\Deni\\MABCC\\MABCC\\Program\\utility_functions_2.txt", echo = TRUE, print.eval =FALSE)
  source("D:\\Deni\\MABCC\\MABCC\\Program\\utility_functions_3.txt", echo = TRUE, print.eval =FALSE)


# Loading packages for for econometric estimation
  library("plm", lib.loc="C:/Program Files/R/R-2.15.1/library")
  library("nls2", lib.loc="C:/Program Files/R/R-2.15.1/library")
  library("minpack.lm", lib.loc="C:/Program Files/R/R-2.15.1/library")

# + 25.03.15
library("mvnmle", lib.loc="C:/Program Files/R/R-2.15.1/library")
library("MASS", lib.loc="C:/Program Files/R/R-2.15.1/library")
# - 25.03.15

  biophy_data_dir <- "D:\\Deni\\MABCC\\MABCC\\Data\\Biophy\\"	
  economy_data_dir <- "D:\\Deni\\MABCC\\MABCC\\Data\\Economy\\"	
  res_dir <- "D:\\Deni\\MABCC\\MABCC\\Data\\Results\\"	
}

START_Year = 1995
CLUSTERED_Years = 12	# number years to cluster

