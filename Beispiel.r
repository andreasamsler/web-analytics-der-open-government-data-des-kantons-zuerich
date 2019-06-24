# Example for the Download

# step by step description

# best is to make a pull before using the functions
# -> right click on the folder -> GitSync -> PULL

#1. insert matomo_token
#2. adjust the month in the object name
#3. adjust the month in the function: month = ....
#4. curser on line 19 and press ctrl+Enter to run the function
#5. have a look at the file -> in global environment klick on the object
#6. adjust the filename in line 27
#7. curser on line 27 and press ctrl+Enter to export the data as a csv-file

source("data_download.R")

# matomo token needed to query the API
matomo_token <- ""


# function that gets the data
OGDanalytics_2019_05 <- getWebAnalytics(
  month = "2019-05-31",
  matomo_token = matomo_token,
  name = "kanton-zuerich"
)

# function that exports the data
writeWebAnalytics(OGDanalytics_2019_05, "L:/STAT/08_DS/06_Diffusion/OGD/Datenproduzenten_ZH/Open-ZH/ZH_Datasets_UniqueActions_2019-05.csv")
