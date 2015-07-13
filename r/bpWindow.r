args <- commandArgs(TRUE)
if(length(args) < 1) {
  cat("Please specify location of .csv file \n")
}

#Read in csv file
CC_window<-read.csv(args[1],stringsAsFactors=FALSE,na.string=".")
GP_window<-read.csv(args[2],stringsAsFactors=FALSE,na.string=".")

print(head(CC_window))
print(head(GP_window))

jpeg("CC_window.jpg")
plot(hist(CC_window$altCount,prob=F,breaks="FD",
   main=paste("CC alt reads")))
dev.off()


jpeg("GP_window.jpg")
plot(hist(GP_window$altCount,prob=F,breaks="FD",
    main=paste("GP alt reads")))
dev.off()



