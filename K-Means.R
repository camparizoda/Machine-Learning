#K-means 

# Manufacturing data using a normal distribution
#HW: Height Woman 
#WW: Weight Woman
#HM: Height Woman
#WM: Weight Man 

BP  <- data.frame(
      WW = rnorm(100,160,10),
      HW = rnorm(100, 60, 9),
      WM = rnorm(100,180,10),
      HM = rnorm(100, 70, 10))

# Partitioning BP in 2 clusters
km_BP <- kmeans(BP, 2)


#Plotting BP 
plot(BP$HW, BP$WW, pch=20, col = km_BP$cluster, xlab="Weight", ylab="Height", ylim=c(0,250), xlim = c(0, 150)) 
par(new=TRUE)
plot(BP$HM, BP$WM, pch=20, col = km_BP$cluster, xlab="Weight", ylab="Height", ylim=c(0,250), xlim = c(0, 150))

dev.new()

# Plotting clusters in a different window
plot(BP$HW, BP$WW, pch=20, col="black", xlab="Weight", ylab="Height", ylim=c(0,250), xlim = c(0, 150)) 
par(new=TRUE)
plot(BP$HM, BP$WM, pch=20, col="red", xlab="Weight", ylab="Height", ylim=c(0,250), xlim = c(0, 150))

