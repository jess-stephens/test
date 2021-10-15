# install.packages("here")
# install.packages("usethis")

library(here)
library(usethis)


# Check where we are in terms of paths
here()

install.packages("devtools")
devtools::install_github("USAID-OHA-SI/glamr")

library(glamr)
library(tidyverse)

ls("package:glamr")




```{r folder setup in a project}
#Check whats under the hood of a function
# Let's check where we are in our directory
#here()
#corps_path <- here("/2020-06-22")
# Look at what is going on with folder setup function.
folder_setup
# This will setup up the default folders
folder_setup()
# Delete folders - when using recursive this will delete everything
# within each folder. 
unlink(list("Data", "Images", "Scripts", "Dataout", 
            "GIS", "Documents", "Graphics", "markdown"), recursive = T)
# Custom folder setup - use with caution
folder_setup(list("MER_Data", "Plots", "RScripts"))
```

## Listing files

Now that we have a new project setup, we can populate our files accordingly. Let's assume that you have downloaded some MSD and have move it to your newly created Data folder. Alternatively, you may have a single folder on your machine where you keep all your updated MSDs. 

# Because the datim path lives outside of my Rproj path, I have set a pointer path. These are helpful for pulling in data from a central folder. 
datim_path <- "C:/Users/Tessam/Documents/DATIM_Data"
#Alternative way of doing this
datim_path <- "../../DATIM_Data"
# Show the files int he DATIM_Data folder
list.files(path = datim_path)
# Search only for xlsx filtes
list.files(path = datim_path, pattern = "xlsx")
# Search only for Genie pulls
list.files(path = datim_path, pattern = "Genie")
# List files that are txt or xlsx
list.files(path = datim_path, pattern = "txt|xlsx")
# List files that are nested in folders, return the full.names
list.files(path = datim_path, pattern = "NGA|HIV", recursive = TRUE, full.names = TRUE)
