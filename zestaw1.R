df1<-read.csv("autaSmall.csv")
df1<-head(df1,5)

install.packages("jsonlite")
install.packages("httr")

library(jsonlite)
require(httr)

endpoint <- "https://api.openweathermap.org/data/2.5/weather?q=Warszawa&appid=1765994b51ed366c506d5dc0d0b07b77"
response<-GET(endpoint)

df1<-read.table("autaSmall.csv",header=TRUE,sep=",", fileEncoding = "UTF-8", nrows=10)

fileCon<-file(description = "autaSmall.csv", open = "r")
close(fileCon)
view(df1)
fileCon<- file(description ="autaSmall.csv",open = "r",encoding="UTF-8" )
df1<-read.table(fileCon,header=TRUE,sep=","
                ,fileEncoding = "UTF-8",nrows=10)
myColNames<- names(df1)
df2<-read.table(fileCon,col.names =myColNames ,sep=","
                ,fileEncoding = "UTF-8",nrows=10)

close(fileCon)

i<-1
repeat{
  if(i>50){
    break
  }
  print(i)
  i<-i+2
}
    library(DBI)
install.packages("RSQLite")
library(RSQLite)

fileCon<- file(description ="autaSmall.csv",open = "r",encoding="UTF-8" )
df1<-read.table(fileCon,header=TRUE,sep=","
                ,fileEncoding = "UTF-8",nrows=10)
myColNames<- names(df1)
df2<-read.table(fileCon,col.names =myColNames ,sep=","
                ,fileEncoding = "UTF-8",nrows=10)

close(fileCon)
