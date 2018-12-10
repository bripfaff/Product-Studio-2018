setwd("C:/Users/Brian Pfaf/Desktop/Cornell Tech/Product studio/twitter data")


df1 <-
  read.csv(file = "data_1.csv", header = TRUE, sep="\t")
df2 <-
  read.csv(file = "data_2.csv", header = TRUE, sep="\t")
df3 <-
  read.csv(file = "data_3.csv", header = TRUE, sep="\t")
df4 <-
  read.csv(file = "data_4.csv", header = TRUE, sep="\t")

df1<- df1[,c(3, 11, 12, 13)]
df2<- df2[,c(3, 11, 12, 15)]
df3<- df3[,c(3, 11, 12, 13)]
df4<- df4[,c(3, 11, 12, 13)]
df<- rbind(df1, df2, df3, df4)

df[is.na(df)] <- 0 


df<-df[!duplicated(df[,3]), ]


write.table(
  df,
  file = "full_data_2.csv",
  sep = ",",
  col.names = T,
  append = F,
  row.names = F,
  qmethod = "double"
)
