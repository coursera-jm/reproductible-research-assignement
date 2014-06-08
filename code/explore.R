#explo ana

baseDir <- "."

dataDir <- file.path(baseDir, "data")
textDir <- file.path(baseDir, "text")
figuresDir <- file.path(baseDir, "figures")
codeDir <- file.path(baseDir, "code")

if(!file.exists(codeDir)) { dir.create(codeDir) }
if(!file.exists(dataDir)) { dir.create(dataDir) }
if(!file.exists(textDir)) { dir.create(textDir) }
if(!file.exists(figuresDir)) { dir.create(figuresDir) }
