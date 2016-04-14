analyze <- function(filename) {
  # Plots the average, min, and max inflammation over time.
  # Input is character string of a csv file.
  dat <- read.csv(file = filename, header = FALSE)
  avg_day_inflammation <- apply(dat, 2, mean)
  plot(avg_day_inflammation)
  max_day_inflammation <- apply(dat, 2, max)
  plot(max_day_inflammation)
  min_day_inflammation <- apply(dat, 2, min)
  plot(min_day_inflammation)
}

analyze("data/inflammation-01.csv")

analyze("data/inflammation-02.csv")
best_practice <- c("Let", "the", "computer", "do", "the", "work")
print_words <- function(sentence) {
  print(sentence[1])
  print(sentence[2])
  print(sentence[3])
  print(sentence[4])
  print(sentence[5])
  print(sentence[6])
}

print_words(best_practice)


best_practice[-6]
print_words <- function(sentence) {
  for (word in sentence) {
    print(word)
  }
}

print_words(best_practice)
print_words(best_practice[-6])

#for(variable in collection){
#do things with variable
#}

len <- 0
vowels <- c("a", "e", "i", "o", "u")
for (v in vowels) {
  len <- len + 1
}
# Number of vowels
len
v #what is v? it is the last value in the vector

letter

seq(3)

print_N(3)

print_N <- function(natural_number){
  for(n in seq(natural_number)){
    print(n)
  }
}

print_N(3)
print_N(10)

total <- 0
vector <- c(2, 4, 6, 1)
for (v in vector) {
  total <- sum(vector)
}
# Number of vowels
total

2^4

expo <- function(base, exponent){
  tot = 1
  
  # Accounts for exponent = 0. Don't worry about this for now
  if(exponent == 0){
    return(tot)
  }
  
  for(i in 1:exponent){
    tot = tot * base
  }
  return(tot)
}

expo(3, 0)
expo(3, 2)


total <- 0
vector <- c(2, 4, 6, 1)
for (v in vector) {
  total <- sum(vector)
}
# Number of vowels
total


list.files(path = "data", pattern = "csv")
list.files()
Sys.glob("i*.csv")
list.files(pattern = "inflammation")

list.files(path = "data", pattern = "csv")
list.files(path = "data", pattern = "inflammation")
list.files(path = "data", pattern = "csv", full.names = TRUE)
filenames <- list.files(path = "data", pattern = "inflammation", full.names = TRUE)
filenames <- filenames[1:3]
for (f in filenames) {
  print(f)
  analyze(f)
}