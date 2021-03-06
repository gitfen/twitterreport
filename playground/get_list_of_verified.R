library(RCurl)
library(XML)
library(stringr) 

# Getting the info
tw_get_verified <- function(uri="https://twitter.com/verified/lists/us-congress/members?scrolled&set=1") {
  if (file.exists(uri)) web <- readLines(uri)
  else web <- getURLContent(url=uri,async=TRUE)
  accounts <- htmlParse(web)
  
  # Parsing
  output <- data.frame(name=xpathSApply(accounts,path = '//*[starts-with(@class,"user-actions btn-group")]',xmlGetAttr,'data-name'))
  output$screen_name <- xpathSApply(accounts,path = '//*[starts-with(@class,"username js")]',getChildrenStrings)
  output
}

# Parsing info
accounts <- getURL(url="https://twitter.com/verified/lists/us-congress/members?scrolled&set=1")
accounts <- htmlParse(accounts)

# Getting the data
congress<- data.frame(name=xpathSApply(accounts,path = '//*[starts-with(@class,"user-actions btn-group")]',xmlGetAttr,'data-name'))
congress$screen_name <- xpathSApply(accounts,path = '//*[starts-with(@class,"username js")]',getChildrenStrings)

house <- tw_get_verified('https://twitter.com/gov/lists/us-house/members')

save(congress,file="data/congress.RData")
