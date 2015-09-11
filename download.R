downloadKaggle <- function(competitionName, fileName) {
        kaggleUrl <- "https://www.kaggle.com/c/"
        download.file(
                paste(
                        kaggleUrl,competitionName,'/download/',fileName,sep=""
                ),
                paste(getwd(),"\\",fileName,sep=""),
                quiet = FALSE
        )
}

downloadSingleKaggleZip <- function(competitionName, zipFileName, fileName) {
        # Use if zip file contains a single file.
        kaggleUrl <- "https://www.kaggle.com/c/"
        download.file(
                paste(
                        kaggleUrl,competitionName,'/download/',zipFileName,sep=""
                ),
                paste(getwd(),"\\",zipFileName,sep=""),
                quiet = FALSE
        )
        
        unzip(paste(getwd(),"\\",zipFileName,sep=""), fileName, exdir = getwd())
        
        unlink(paste(getwd(), "/", zipFileName,sep = ""))
}


downloadMultKaggleZip <- function(competitionName, zipFileName, newFolderName = "") {
        # Use if zip file contains multiple files.
        kaggleUrl <- "https://www.kaggle.com/c/"
        download.file(
                paste(
                        kaggleUrl,competitionName,'/download/',zipFileName,sep=""
                ),
                paste(getwd(),"\\",zipFileName,sep=""),
                quiet = FALSE
        )
        
        unzip(paste(getwd(),"\\",zipFileName,sep=""), exdir = paste(getwd(), newFolderName, sep = ""))
        
        unlink(paste(getwd(), "/", zipFileName,sep = ""))
}