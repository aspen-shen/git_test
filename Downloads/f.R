library(gplots)

indata <- read.table("C:\\Users\\young\\Downloads\\pQHE.txt",header=F,colClasses="numeric",sep=" ")
indata2 <- read.table("C:\\Users\\young\\Downloads\\pRHE.txt",header=F,colClasses="numeric",sep=" ")

indata <- as.matrix(indata)
indata <- indata[,1:20]
indata2 <- as.matrix(indata2)
indata2 <- indata2[,1:20]

# par(mfrow=c(1,2))
# my_palette <- colorRampPalette(c("blue", "red", "white"))(n = 200)
# heatmap.2(indata,trace='none',col=my_palette)
# heatmap.2(indata2,trace='none',col=my_palette)

dis <- as.dist(indata2)
disq <- as.dist(1/indata)

hq <- hclust(disq)
h <- hclust(dis)
png(filename="C:\\Users\\young\\Downloads\\cluster HE.png",width=1200,height=600)
par(mfrow=c(1,2))
plot(h,main="Cluster based on pR")
plot(hq,main="Cluster based on pQ")
dev.off()