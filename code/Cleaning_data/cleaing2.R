setwd("C:/Users/Brian Pfaf/Desktop/Cornell Tech/Product studio/twitter data")


df1 <-
  read.csv(file = "data_5.csv", header = TRUE, sep=",", stringsAsFactors = FALSE)

df1 <- df1[,c(3, 11, 12, 13)]

df1[df1["Tweet.Nav"]=="1 mars", "Tweet.Nav"] <- "Mar 1"
df1[df1["Tweet.Nav"]=="6 mars", "Tweet.Nav"] <- "Mar 6"
df1[df1["Tweet.Nav"]=="12 mars", "Tweet.Nav"] <- "Mar 12"
df1[df1["Tweet.Nav"]=="18 mars", "Tweet.Nav"] <- "Mar 18"
df1[df1["Tweet.Nav"]=="29 mars", "Tweet.Nav"] <- "Mar 29"

df1[df1["Tweet.Nav"]=="19 avr.", "Tweet.Nav"] <- "Apr 19"

df1[df1["Tweet.Nav"]=="9 mai", "Tweet.Nav"] <- "May 9"
df1[df1["Tweet.Nav"]=="11 mai", "Tweet.Nav"] <- "May 11"
df1[df1["Tweet.Nav"]=="12 mai", "Tweet.Nav"] <- "May 12"
df1[df1["Tweet.Nav"]=="14 mai", "Tweet.Nav"] <- "May 14"
df1[df1["Tweet.Nav"]=="16 mai", "Tweet.Nav"] <- "May 16"

df1[df1["Tweet.Nav"]=="3 janv.", "Tweet.Nav"] <- "Jan 3"
df1[df1["Tweet.Nav"]=="7 janv.", "Tweet.Nav"] <- "Jan 7"
df1[df1["Tweet.Nav"]=="18 janv.", "Tweet.Nav"] <- "Jan 18"
df1[df1["Tweet.Nav"]=="19 janv.", "Tweet.Nav"] <- "Jan 19"
df1[df1["Tweet.Nav"]=="24 janv.", "Tweet.Nav"] <- "Jan 24"
df1[df1["Tweet.Nav"]=="29 janv.", "Tweet.Nav"] <- "Jan 29"

df1[df1["Tweet.Nav"]=="27 fÃ©vr.", "Tweet.Nav"] <- "Feb 27"

df2 <-
  read.csv(file = "data_6.csv", header = TRUE, sep=",",  stringsAsFactors = FALSE)
df2 <- df2[,c(3, 11, 12, 13)]


for (i in 1:31){
  df2[df2["Tweet.Nav"]==paste(i," janv. 2017", sep=""), "Tweet.Nav"] <- paste(i," Jan 2017", sep="")
}

for (i in 1:31){
  df2[df2["Tweet.Nav"]==paste(i," mars 2017", sep=""), "Tweet.Nav"] <- paste(i," Mar 2017", sep="")
}
for (i in 1:31){
  df2[df2["Tweet.Nav"]==paste(i," avr. 2017", sep=""), "Tweet.Nav"] <- paste(i," Apr 2017", sep="")
}
for (i in 1:31){
  df2[df2["Tweet.Nav"]==paste(i," mai 2017", sep=""), "Tweet.Nav"] <- paste(i," May 2017", sep="")
}
for (i in 1:31){
  df2[df2["Tweet.Nav"]==paste(i," juin 2017", sep=""), "Tweet.Nav"] <- paste(i," Jun 2017", sep="")
}
for (i in 1:31){
  df2[df2["Tweet.Nav"]==paste(i," juil. 2017", sep=""), "Tweet.Nav"] <- paste(i," Jul 2017", sep="")
}
for (i in 1:31){
  df2[df2["Tweet.Nav"]==paste(i," août 2017", sep=""), "Tweet.Nav"] <- paste(i," Aug 2017", sep="")
}
for (i in 1:31){
  df2[df2["Tweet.Nav"]==paste(i," aoÃ»t 2017", sep=""), "Tweet.Nav"] <- paste(i," Aug 2017", sep="")
}
for (i in 1:31){
  df2[df2["Tweet.Nav"]==paste(i," sept. 2017", sep=""), "Tweet.Nav"] <- paste(i," Sep 2017", sep="")
}
for (i in 1:31){
  df2[df2["Tweet.Nav"]==paste(i," oct. 2017", sep=""), "Tweet.Nav"] <- paste(i," Oct 2017", sep="")
}

for (i in 1:31){
  df2[df2["Tweet.Nav"]==paste(i," nov. 2017", sep=""), "Tweet.Nav"] <- paste(i," Nov 2017", sep="")
}
for (i in 1:31){
  df2[df2["Tweet.Nav"]==paste(i," déc. 2017", sep=""), "Tweet.Nav"] <- paste(i," Dec 2017", sep="")
}
for (i in 1:31){
  df2[df2["Tweet.Nav"]==paste(i," dÃ©c. 2017", sep=""), "Tweet.Nav"] <- paste(i," Dec 2017", sep="")
}



df3 <-
  read.csv(file = "data_7.csv", header = TRUE, sep=",", stringsAsFactors = FALSE)
df3 <- df3[,c(3, 11, 12, 13)]
colnames(df3)[2] <- "Tweet.Nav"
colnames(df3)[3] <- "Tweet.Nav_link"

for (i in 1:31){
  df3[df3["Tweet.Nav"]==paste(i," janv. 2015", sep=""), "Tweet.Nav"] <- paste(i," Jan 2015", sep="")
}
for (i in 1:31){
  df3[df3["Tweet.Nav"]==paste(i," fÃ©vr. 2015", sep=""), "Tweet.Nav"] <- paste(i," Feb 2015", sep="")
}

for (i in 1:31){
  df3[df3["Tweet.Nav"]==paste(i," mars 2015", sep=""), "Tweet.Nav"] <- paste(i," Mar 2015", sep="")
}
for (i in 1:31){
  df3[df3["Tweet.Nav"]==paste(i," avr. 2015", sep=""), "Tweet.Nav"] <- paste(i," Apr 2015", sep="")
}
for (i in 1:31){
  df3[df3["Tweet.Nav"]==paste(i," mai 2015", sep=""), "Tweet.Nav"] <- paste(i," May 2015", sep="")
}
for (i in 1:31){
  df3[df3["Tweet.Nav"]==paste(i," juin 2015", sep=""), "Tweet.Nav"] <- paste(i," Jun 2015", sep="")
}
for (i in 1:31){
  df3[df3["Tweet.Nav"]==paste(i," juil. 2015", sep=""), "Tweet.Nav"] <- paste(i," Jul 2015", sep="")
}
for (i in 1:31){
  df3[df3["Tweet.Nav"]==paste(i," août 2015", sep=""), "Tweet.Nav"] <- paste(i," Aug 2015", sep="")
}
for (i in 1:31){
  df3[df3["Tweet.Nav"]==paste(i," aoÃ»t 2015", sep=""), "Tweet.Nav"] <- paste(i," Aug 2015", sep="")
}
for (i in 1:31){
  df3[df3["Tweet.Nav"]==paste(i," sept. 2015", sep=""), "Tweet.Nav"] <- paste(i," Sep 2015", sep="")
}
for (i in 1:31){
  df3[df3["Tweet.Nav"]==paste(i," oct. 2015", sep=""), "Tweet.Nav"] <- paste(i," Oct 2015", sep="")
}
for (i in 1:31){
  df3[df3["Tweet.Nav"]==paste(i," nov. 2015", sep=""), "Tweet.Nav"] <- paste(i," Nov 2015", sep="")
}
for (i in 1:31){
  df3[df3["Tweet.Nav"]==paste(i," déc. 2015", sep=""), "Tweet.Nav"] <- paste(i," Dec 2015", sep="")
}
for (i in 1:31){
  df3[df3["Tweet.Nav"]==paste(i," dÃ©c. 2015", sep=""), "Tweet.Nav"] <- paste(i," Dec 2015", sep="")
}

df4 <-
  read.csv(file = "data_8.csv", header = TRUE, sep=",", stringsAsFactors = FALSE)
df4 <- df4[,c(3, 11, 12, 13)]

for (i in 1:31){
  df4[df4["Tweet.Nav"]==paste(i," dÃ©c. 2017", sep=""), "Tweet.Nav"] <- paste(i," Dec 2017", sep="")
}
for (i in 1:31){
  df4[df4["Tweet.Nav"]==paste(i," janv.", sep=""), "Tweet.Nav"] <- paste("Jan ",i, sep="")
}
for (i in 1:31){
  df4[df4["Tweet.Nav"]==paste(i," fÃ©vr.", sep=""), "Tweet.Nav"] <- paste("Feb ", i,sep="")
}

for (i in 1:31){
  df4[df4["Tweet.Nav"]==paste(i," mars", sep=""), "Tweet.Nav"] <- paste("Mar ", i, sep="")
}
for (i in 1:31){
  df4[df4["Tweet.Nav"]==paste(i," avr.", sep=""), "Tweet.Nav"] <- paste("Apr ", i, sep="")
}
for (i in 1:31){
  df4[df4["Tweet.Nav"]==paste(i," mai", sep=""), "Tweet.Nav"] <- paste("May ", i, sep="")
}
for (i in 1:31){
  df4[df4["Tweet.Nav"]==paste(i," juin", sep=""), "Tweet.Nav"] <- paste("Jun ", i, sep="")
}
for (i in 1:31){
  df4[df4["Tweet.Nav"]==paste(i," juil.", sep=""), "Tweet.Nav"] <- paste("Jul ", i, sep="")
}
for (i in 1:31){
  df4[df4["Tweet.Nav"]==paste(i," août", sep=""), "Tweet.Nav"] <- paste("Aug ", i, sep="")
}
for (i in 1:31){
  df4[df4["Tweet.Nav"]==paste(i," aoÃ»t", sep=""), "Tweet.Nav"] <- paste("Aug ", i, sep="")
}
for (i in 1:31){
  df4[df4["Tweet.Nav"]==paste(i," sept.", sep=""), "Tweet.Nav"] <- paste("Sep ", i, sep="")
}
for (i in 1:31){
  df4[df4["Tweet.Nav"]==paste(i," oct.", sep=""), "Tweet.Nav"] <- paste("Oct ", i, sep="")
}


df5 <- 
  read.csv(file = "data_9.csv", header = TRUE, sep=",", stringsAsFactors = FALSE)
df5<- df5[,c(3, 11, 12, 13)]
colnames(df5)[2] <- "Tweet.Nav"
colnames(df5)[3] <- "Tweet.Nav_link"
for (i in 1:31){
  df5[df5["Tweet.Nav"]==paste(i," janv. 2016", sep=""), "Tweet.Nav"] <- paste(i," Jan 2016", sep="")
}
for (i in 1:31){
  df5[df5["Tweet.Nav"]==paste(i," févr. 2016", sep=""), "Tweet.Nav"] <- paste(i," Feb 2016", sep="")
}
for (i in 1:31){
  df5[df5["Tweet.Nav"]==paste(i," mars 2016", sep=""), "Tweet.Nav"] <- paste(i," Mar 2016", sep="")
}
for (i in 1:31){
  df5[df5["Tweet.Nav"]==paste(i," avr. 2016", sep=""), "Tweet.Nav"] <- paste(i," Apr 2016", sep="")
}
for (i in 1:31){
  df5[df5["Tweet.Nav"]==paste(i," mai 2016", sep=""), "Tweet.Nav"] <- paste(i," May 2016", sep="")
}
for (i in 1:31){
  df5[df5["Tweet.Nav"]==paste(i," juin 2016", sep=""), "Tweet.Nav"] <- paste(i," Jun 2016", sep="")
}
for (i in 1:31){
  df5[df5["Tweet.Nav"]==paste(i," juil. 2016", sep=""), "Tweet.Nav"] <- paste(i," Jul 2016", sep="")
}
for (i in 1:31){
  df5[df5["Tweet.Nav"]==paste(i," août 2016", sep=""), "Tweet.Nav"] <- paste(i," Aug 2016", sep="")
}
for (i in 1:31){
  df5[df5["Tweet.Nav"]==paste(i," aoÃ»t 2016", sep=""), "Tweet.Nav"] <- paste(i," Aug 2016", sep="")
}
for (i in 1:31){
  df5[df5["Tweet.Nav"]==paste(i," sept. 2016", sep=""), "Tweet.Nav"] <- paste(i," Sep 2016", sep="")
}
for (i in 1:31){
  df5[df5["Tweet.Nav"]==paste(i," oct. 2016", sep=""), "Tweet.Nav"] <- paste(i," Oct 2016", sep="")
}
for (i in 1:31){
  df5[df5["Tweet.Nav"]==paste(i," nov. 2016", sep=""), "Tweet.Nav"] <- paste(i," Nov 2016", sep="")
}
for (i in 1:31){
  df5[df5["Tweet.Nav"]==paste(i," déc. 2016", sep=""), "Tweet.Nav"] <- paste(i," Dec 2016", sep="")
}
for (i in 1:31){
  df5[df5["Tweet.Nav"]==paste(i," dÃ©c. 2016", sep=""), "Tweet.Nav"] <- paste(i," Dec 2016", sep="")
}


df6 <-
  read.csv(file = "data_1.csv", header = TRUE, sep="\t")
df7 <-
  read.csv(file = "data_2.csv", header = TRUE, sep="\t")
df8 <-
  read.csv(file = "data_3.csv", header = TRUE, sep="\t")
df9 <-
  read.csv(file = "data_4.csv", header = TRUE, sep="\t")

df6<- df6[,c(3, 11, 12, 13)]
df7<- df7[,c(3, 11, 12, 15)]
df8<- df8[,c(3, 11, 12, 13)]
df9<- df9[,c(3, 11, 12, 13)]
df<- rbind(df1, df2, df3, df4,df5,df6,df7,df8,df9)



write.table(
  df,
  file = "full_data_new.csv",
  sep = ",",
  col.names = T,
  append = F,
  row.names = F,
  qmethod = "double"
)

