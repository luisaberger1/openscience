# Define the directory path
dir_path <- "~/Documents/Projects/OpenScience/project_openscience"

# Create the directory if it doesn't exist
if (!dir.exists(dir_path)) {
  dir.create(dir_path, recursive = TRUE)
}

# Specify the URL and destination file path
url <- "https://raw.githubusercontent.com/RSE-Sheffield/Code_cafe/master/example_data.csv"
destfile <- file.path(dir_path, "example_data.csv")

# Download and save the file
download.file(url, destfile)

mydata = read.csv("~/Documents/Projects/OpenScience/project_openscience/example_data.csv")
plot(mydata$xdata,mydata$ydata)
