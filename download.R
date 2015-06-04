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