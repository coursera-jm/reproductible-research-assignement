#explo ana

baseDir <- ".."

# normaly already done

dataDir <- file.path(baseDir, "data")
textDir <- file.path(baseDir, "text")
figuresDir <- file.path(baseDir, "figures")
codeDir <- file.path(baseDir, "code")

if(!file.exists(codeDir)) { dir.create(codeDir) }
if(!file.exists(dataDir)) { dir.create(dataDir) }
if(!file.exists(textDir)) { dir.create(textDir) }
if(!file.exists(figuresDir)) { dir.create(figuresDir) }

# download original data if necessary (skip if exists already as it takes time)
zipFilePath <- file.path (dataDir, "Dataset.zip")
zipFileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
dateFilePath <- file.path(dataDir,paste(fileName,"_date_time_downloaded.txt",sep=""))
if (!file.exists(zipFilePath)) {
  download.file (zipFileUrl, zipFilePath, method="curl")
  DTDownloaded <- format(Sys.time(), "%Y-%b-%d %H:%M:%S")
  cat (DTDownloaded, file=dateFilePath)
  unzip (zipFilePath, exdir=dataDir)
} else {
  DTDownloaded <- scan(file=dateFilePath, what="character", sep="\n")
}

cat ("The dataset is located in", dataDir, "and was downloaded on downloaded on", DTDownloaded)
list.files(dataDir)

#subset(dataset.tidy, PROPDMGEXP == "0")$PROPDMG
#head(subset(dataset.tidy, PROPDMGEXP=='B'))

# alternate to aggregate
dataset.casualities <- sort(tapply(dataset.tidy$CASUALITIES, dataset.tidy$EVTYPE, sum), decreasing = T)
dataset.cost <- sort(tapply(dataset.tidy$TOTAL_COST, dataset.tidy$EVTYPE, sum), decreasing = T)

All   <- cbind(tmp[,PROP_COST], tmp[,CROP_COST])
#legend = c("Property", "Crop"))
#pie(tmp$TOTAL_COST, labels = tmp$EVTYPE, col = rainbow(length(lbls)), main = "Economics")
