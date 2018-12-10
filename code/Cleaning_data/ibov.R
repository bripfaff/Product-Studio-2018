setwd("C:/Users/Brian Pfaf/Desktop/Cornell Tech/Product studio/twitter data/ibov")


df1 <-
  read.csv(file = "ibov1.csv", header = TRUE, sep=",", stringsAsFactors = FALSE)
df1 <- df1[,c(3, 11, 12, 13)]
for (i in 1:31){
  df1[df1["Tweet.Nav"]==paste(i," d茅c. 2017", sep=""), "Tweet.Nav"] <- paste(i," Dec 2017", sep="")
}
for (i in 1:31){
  df1[df1["Tweet.Nav"]==paste(i," janv.", sep=""), "Tweet.Nav"] <- paste("Jan ",i, sep="")
}
for (i in 1:31){
  df1[df1["Tweet.Nav"]==paste(i," f茅vr.", sep=""), "Tweet.Nav"] <- paste("Feb ", i,sep="")
}

for (i in 1:31){
  df1[df1["Tweet.Nav"]==paste(i," mars", sep=""), "Tweet.Nav"] <- paste("Mar ", i, sep="")
}
for (i in 1:31){
  df1[df1["Tweet.Nav"]==paste(i," avr.", sep=""), "Tweet.Nav"] <- paste("Apr ", i, sep="")
}
for (i in 1:31){
  df1[df1["Tweet.Nav"]==paste(i," mai", sep=""), "Tweet.Nav"] <- paste("May ", i, sep="")
}
for (i in 1:31){
  df1[df1["Tweet.Nav"]==paste(i," juin", sep=""), "Tweet.Nav"] <- paste("Jun ", i, sep="")
}
for (i in 1:31){
  df1[df1["Tweet.Nav"]==paste(i," juil.", sep=""), "Tweet.Nav"] <- paste("Jul ", i, sep="")
}
for (i in 1:31){
  df1[df1["Tweet.Nav"]==paste(i," ao鹴", sep=""), "Tweet.Nav"] <- paste("Aug ", i, sep="")
}
for (i in 1:31){
  df1[df1["Tweet.Nav"]==paste(i," ao没t", sep=""), "Tweet.Nav"] <- paste("Aug ", i, sep="")
}
for (i in 1:31){
  df1[df1["Tweet.Nav"]==paste(i," sept.", sep=""), "Tweet.Nav"] <- paste("Sep ", i, sep="")
}
for (i in 1:31){
  df1[df1["Tweet.Nav"]==paste(i," oct.", sep=""), "Tweet.Nav"] <- paste("Oct ", i, sep="")
}


df2 <-
  read.csv(file = "ibov2.csv", header = TRUE, sep=",", stringsAsFactors = FALSE)
df2 <- df2[,c(3, 11, 12, 13)]
df2<-df3
for (i in 1:31){
  df2[df2["Tweet.Nav"]==paste(i," janv. 2016", sep=""), "Tweet.Nav"] <- paste(i," Jan 2016", sep="")
}

for (i in 1:31){
  df2[df2["Tweet.Nav"]==paste(i," mars 2016", sep=""), "Tweet.Nav"] <- paste(i," Mar 2016", sep="")
}
for (i in 1:31){
  df2[df2["Tweet.Nav"]==paste(i," avr. 2016", sep=""), "Tweet.Nav"] <- paste(i," Apr 2016", sep="")
}
for (i in 1:31){
  df2[df2["Tweet.Nav"]==paste(i," mai 2016", sep=""), "Tweet.Nav"] <- paste(i," May 2016", sep="")
}
for (i in 1:31){
  df2[df2["Tweet.Nav"]==paste(i," juin 2016", sep=""), "Tweet.Nav"] <- paste(i," Jun 2016", sep="")
}
for (i in 1:31){
  df2[df2["Tweet.Nav"]==paste(i," juil. 2016", sep=""), "Tweet.Nav"] <- paste(i," Jul 2016", sep="")
}
for (i in 1:31){
  df2[df2["Tweet.Nav"]==paste(i," ao鹴 2016", sep=""), "Tweet.Nav"] <- paste(i," Aug 2016", sep="")
}
for (i in 1:31){
  df2[df2["Tweet.Nav"]==paste(i," ao没t 2016", sep=""), "Tweet.Nav"] <- paste(i," Aug 2016", sep="")
}
for (i in 1:31){
  df2[df2["Tweet.Nav"]==paste(i," sept. 2016", sep=""), "Tweet.Nav"] <- paste(i," Sep 2016", sep="")
}
for (i in 1:31){
  df2[df2["Tweet.Nav"]==paste(i," oct. 2016", sep=""), "Tweet.Nav"] <- paste(i," Oct 2016", sep="")
}

for (i in 1:31){
  df2[df2["Tweet.Nav"]==paste(i," nov. 2016", sep=""), "Tweet.Nav"] <- paste(i," Nov 2016", sep="")
}
for (i in 1:31){
  df2[df2["Tweet.Nav"]==paste(i," d閏. 2016", sep=""), "Tweet.Nav"] <- paste(i," Dec 2016", sep="")
}
for (i in 1:31){
  df2[df2["Tweet.Nav"]==paste(i," d茅c. 2016", sep=""), "Tweet.Nav"] <- paste(i," Dec 2016", sep="")
}
df3<-df2
df2<-
read.csv(file = "ibov2.csv", header = TRUE, sep=",", stringsAsFactors = FALSE)
df2 <- df2[,c(3, 11, 12, 13)]
for (i in 1:31){
  df2[df2["Tweet.Nav"]==paste(i," janv. 2016", sep=""), "Tweet.Nav"] <- paste(i," Jan 2016", sep="")
}

for (i in 1:31){
  df2[df2["Tweet.Nav"]==paste(i," mars 2016", sep=""), "Tweet.Nav"] <- paste(i," Mar 2016", sep="")
}
for (i in 1:31){
  df2[df2["Tweet.Nav"]==paste(i," avr. 2016", sep=""), "Tweet.Nav"] <- paste(i," Apr 2016", sep="")
}
for (i in 1:31){
  df2[df2["Tweet.Nav"]==paste(i," mai 2016", sep=""), "Tweet.Nav"] <- paste(i," May 2016", sep="")
}
for (i in 1:31){
  df2[df2["Tweet.Nav"]==paste(i," juin 2016", sep=""), "Tweet.Nav"] <- paste(i," Jun 2016", sep="")
}
for (i in 1:31){
  df2[df2["Tweet.Nav"]==paste(i," juil. 2016", sep=""), "Tweet.Nav"] <- paste(i," Jul 2016", sep="")
}
for (i in 1:31){
  df2[df2["Tweet.Nav"]==paste(i," ao鹴 2016", sep=""), "Tweet.Nav"] <- paste(i," Aug 2016", sep="")
}
for (i in 1:31){
  df2[df2["Tweet.Nav"]==paste(i," ao没t 2016", sep=""), "Tweet.Nav"] <- paste(i," Aug 2016", sep="")
}
for (i in 1:31){
  df2[df2["Tweet.Nav"]==paste(i," sept. 2016", sep=""), "Tweet.Nav"] <- paste(i," Sep 2016", sep="")
}
for (i in 1:31){
  df2[df2["Tweet.Nav"]==paste(i," oct. 2016", sep=""), "Tweet.Nav"] <- paste(i," Oct 2016", sep="")
}

for (i in 1:31){
  df2[df2["Tweet.Nav"]==paste(i," nov. 2016", sep=""), "Tweet.Nav"] <- paste(i," Nov 2016", sep="")
}
for (i in 1:31){
  df2[df2["Tweet.Nav"]==paste(i," d閏. 2016", sep=""), "Tweet.Nav"] <- paste(i," Dec 2016", sep="")
}
for (i in 1:31){
  df2[df2["Tweet.Nav"]==paste(i," d茅c. 2016", sep=""), "Tweet.Nav"] <- paste(i," Dec 2016", sep="")
}
df4<-df1
df1 <-
  read.csv(file = "ibov4.csv", header = TRUE, sep=",", stringsAsFactors = FALSE)
df1 <- df1[,c(3, 11, 12, 16)]
for (i in 1:31){
  df1[df1["Tweet.Nav"]==paste(i," d茅c. 2017", sep=""), "Tweet.Nav"] <- paste(i," Dec 2017", sep="")
}
for (i in 1:31){
  df1[df1["Tweet.Nav"]==paste(i," janv.", sep=""), "Tweet.Nav"] <- paste("Jan ",i, sep="")
}
for (i in 1:31){
  df1[df1["Tweet.Nav"]==paste(i," f茅vr.", sep=""), "Tweet.Nav"] <- paste("Feb ", i,sep="")
}

for (i in 1:31){
  df1[df1["Tweet.Nav"]==paste(i," mars", sep=""), "Tweet.Nav"] <- paste("Mar ", i, sep="")
}
for (i in 1:31){
  df1[df1["Tweet.Nav"]==paste(i," avr.", sep=""), "Tweet.Nav"] <- paste("Apr ", i, sep="")
}
for (i in 1:31){
  df1[df1["Tweet.Nav"]==paste(i," mai", sep=""), "Tweet.Nav"] <- paste("May ", i, sep="")
}
for (i in 1:31){
  df1[df1["Tweet.Nav"]==paste(i," juin", sep=""), "Tweet.Nav"] <- paste("Jun ", i, sep="")
}
for (i in 1:31){
  df1[df1["Tweet.Nav"]==paste(i," juil.", sep=""), "Tweet.Nav"] <- paste("Jul ", i, sep="")
}
for (i in 1:31){
  df1[df1["Tweet.Nav"]==paste(i," ao鹴", sep=""), "Tweet.Nav"] <- paste("Aug ", i, sep="")
}
for (i in 1:31){
  df1[df1["Tweet.Nav"]==paste(i," ao没t", sep=""), "Tweet.Nav"] <- paste("Aug ", i, sep="")
}
for (i in 1:31){
  df1[df1["Tweet.Nav"]==paste(i," sept.", sep=""), "Tweet.Nav"] <- paste("Sep ", i, sep="")
}
for (i in 1:31){
  df1[df1["Tweet.Nav"]==paste(i," oct.", sep=""), "Tweet.Nav"] <- paste("Oct ", i, sep="")
}

df<- rbind(df1, df2, df3, df4)

df <- subset(df, !duplicated(df[,3:4]))

write.table(
  df,
  file = "ibov_full.csv",
  sep = ",",
  col.names = T,
  append = F,
  row.names = F,
  qmethod = "double"
)
