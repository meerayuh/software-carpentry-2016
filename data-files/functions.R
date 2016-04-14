str(read.csv)

temp<-67

fahr_to_kelvin <- function(temp) {
  kelvin <- ((temp - 32) * (5 / 9)) + 273.15
  return(kelvin)
}

fahr_to_kelvin(32)
fahr_to_kelvin(212)


kelvin_to_celsius <- function(temp) {
  celsius <- temp - 273.15
  return(celsius)
}
kelvin_to_celsius(0)


fahr_to_celsius <- function(temp) {
  temp_k <- fahr_to_kelvin(temp)
  result <- kelvin_to_celsius(temp_k)
  return(result)
}

# freezing point of water in Celsius
fahr_to_celsius(32.0)

best_practice <- c("Write", "programs", "for", "people", "not", "computers")
asterisk <- "***"  # R interprets a variable with a single value as a vector
# with one element.
fence(best_practice, asterisk)

fence <- function(original, wrapper){
  # Comment about your function here
  return(c(wrapper, original, wrapper))
}

best_practice <- c("Write", "programs", "for", "people", "not", "computers")
asterisk <- "***"
fence(best_practice, asterisk)


