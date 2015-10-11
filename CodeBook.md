---
title: "CodeBook"
author: "KoolWebDezign"
date: "October 11, 2015"
output: html_document
---

**COMPUTER PLATFORM:**

* Operating Platform: Windows 7 Professional, Service Pack 1  
* Microprocessor: Intel Core i3-2100 CPU @ 3.10 GHz  
* RAM: 8.0 GB  
* System: 64-bit Operating System  

**R PLATFORM**

* R version 3.2.2 (2015-08-14) -- "Fire Safety"  
* Copyright (C) 2015 The R Foundation for Statistical Computing  
* Platform: x86_64-w64-mingw32/x64 (64-bit)  
* R Studio: Version 0.99.467

**DATA INFORMATION**

Please note that the data used in this exercise was obtained at the following URL location <https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip> on the date indicated above inside the title block.  

A full description is available at the site where the data was obtained:

<https://archive.ics.uci.edu/ml/datasets/Individual+household+electric+power+consumption>

It is important to document the date of execution of this program since data can change over time.  Future results with the use of this program can vary if the remote data was updated or changed for any reason.

**USER INSTRUCTIONS**

The R Programming scripts that I have included here will completely execute the full sequence of steps necessary to get the data from its original source, unzip the file, load the data table, sub-set the data for the desired data collection, and to then process the results as directed by the professor.  Each script will run inside the current working directory.

**DEPENDENT R PACKAGES**

*Downloader* - The 'downloader' package was chosen for the execution of the downloading and the unzipping of the data targeted by this exercise.  This program will check for the existence of a local folder (inside the current working directory) named by the user.  The program will not execute if this folder exists.  So a user of this program should be sure that the user data folder does not exist before executing this program.

*DATA.TABLE* - 'data.table' is a useful library for executing several functions related to the management and arranging of table data.

*GRAPHICS* - All of the charts and plots were prepared with the base plotting system available with the R 'Graphics' package.

**OTHER INFORMATION**

1. Please be sure to read further instructions included within the README.md file included within this repository.








