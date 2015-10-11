# This program has been developed by KoolWebDezign as part of an assignment from the 
# 'Exploratory Data Analysis' course contained within the 'Data Science Specialization'
# offered by John Hopkins University on http://www.coursera.org.

# Please see the included README.md file for further background information on this
# assignment.  The target data file is located on the internet at the following location.
# http://archive.ics.uci.edu/ml/
# https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip

# Define local file name
local_file_name_zip = "household_power_consumption.zip";
local_file_name_text = "household_power_consumption.txt";

# Test for existence of this local file.  Download data if data is missing.
if (!file.exists(local_file_name_text)) {

	# The 'downloader' library is required for execution of this program
	test_downloader <- require(downloader)
	if (!test_downloader) {
		install.packages("downloader");
		require(downloader);
	}

	# Download the data
	data_url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip";
	download(data_url, dest=local_file_name_zip, mode="wb");
    
	# Unzip the downloaded files
	unzip (local_file_name_zip, exdir=".");

}

# The 'data.table' library is required for execution of this program
test_data_table <- require(data.table);
if (!test_data_table) {
    install.packages("data.table");
    require(data.table);
}

# Read data from downloaded files - if object doesn't already exist in memory
if (!exists("household_power")) {
	household_power = read.table(local_file_name_text, header=TRUE, sep=";", na.strings="?", stringsAsFactors=FALSE);
	# Create date/time objects from date/time string data
	household_power$Time <- strptime( paste(household_power$Date, household_power$Time, sep=" "), "%d/%m/%Y %H:%M:%S");	
	household_power$Date <- as.Date(household_power$Date, "%d/%m/%Y");
	
	# Sub-set the data to extract the desired data set
	#household_power <- household_power[order(Date),];
	start_date <- as.Date("2007-02-01");
	end_date <- as.Date("2007-02-02");
	
	household_power <- household_power[household_power$Date >= start_date & household_power$Date <= end_date,];
}

# Generate a line chart - Plot #2
plot(household_power$Time, household_power$Global_active_power, type="o", ylab="Global Active Power (kilowatts)", xlab="", pch=".");

# Output a PNG file
dev.copy(png, file="plot2.png", height=480, width=480);
dev.off();

