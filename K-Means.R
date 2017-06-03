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

#PLotting two graphs in the same windows
old.par <- par(mfrow=c(1, 2))
par(old.par)

#Plotting BP 
plot(main="Plotting Sample", BP$HW, BP$WW, pch=20, col = km_BP$cluster, xlab="Weight", ylab="Height", ylim=c(0,250), xlim = c(0, 150)) 
par(new=TRUE)
plot(BP$HM, BP$WM, pch=20, col = km_BP$cluster, xlab="Weight", ylab="Height", ylim=c(0,250), xlim = c(0, 150))

# Plotting clusters 
plot(main="Plotting K-Means Clusters", BP$HW, BP$WW, pch=20, col="black", xlab="Weight", ylab="Height", ylim=c(0,250), xlim = c(0, 150)) 
par(new=TRUE)
plot(BP$HM, BP$WM, pch=20, col="red", xlab="Weight", ylab="Height", ylim=c(0,250), xlim = c(0, 150))

