setwd("~/Desktop/software-carpentry-2016/data-files/r-lesson/")
read.csv(file = "data/inflammation-01.csv", header = FALSE)
weight_kg <- 55
weight_kg
2.2 * weight_kg
weight_kg
weight_kg <- 57.5
weight_lb <- 2.2 * weight_kg
weight_lb
weight_kg <- 100.0
weight_lb
dat <- read.csv('inflammation-01.csv', header = FALSE)
dat
dat <- read.csv(file = "data/inflammation-01.csv", header = FALSE)
dat
class(dat)
dim(dat)
dat[1,1]
dat[30,20]
dat[1:4, 1:10]
dat[c(3,8,10), c(5,7,12)]
dat[5,]
dat[,16]
raptor_1 <- dat
max(raptor_1)
min(raptor_1)
max(dat[2,])
mean(dat[,7])
sd(dat[,7])
?apply
avg_raptor_inflammation = apply(dat, 1, mean)
avg_day_inflammation = apply(dat, 2, mean)
avg_day_inflammation
mass <- 47.5
age <- 122
mass <- mass * 2.0
age <- age - 20
class(dat)
plot(avg_day_inflammation)
max_day_inflammation <- apply(dat, 2, max)
plot(max_day_inflammation)
min_day_inflammation <- apply(dat, 2, min)
plot(min_day_inflammation) 
