
library(rvest)
url <- html("https://www.discogs.com/Wolfgang-Amadeus-Mozart-Complete-Works-LOeuvre-Int%C3%A9grale-Gesamtwerk/release/1028899")

text <- html_nodes(x = url, css = "#notes a") %>%
  html_text()

class(text)

test <- as.data.frame(text)
View(test)
