library(TDA)
setwd("/home/tomasp/Dokumenty/Master_Thesis/scripts/")

#Generate random samples from the bivariate normal distribution
Nsample <- 10
data1 <- MASS::mvrnorm(
  n = Nsample, mu = c(2, 2),
  Sigma = matrix(c(1, 0, 0, 1), 2, 2)
)

data2 <- MASS::mvrnorm(
  n = Nsample, mu = c(10, 10),
  Sigma = matrix(c(1, 0, 0, 1), 2, 2)
)

data3 <- MASS::mvrnorm(
  n = Nsample, mu = c(20, 5),
  Sigma = matrix(c(1, 0, 0, 1), 2, 2)
)

data4 <- MASS::mvrnorm(
  n = Nsample, mu = c(25, 30),
  Sigma = matrix(c(1, 0, 0, 1), 2, 2)
)

dataList <- as.matrix(rbind(data1, data2, data3, data4))

#Hierarchical single-linkage clustering with the built-in function hclust()
dist <- dist(dataList, diag = TRUE)
hc <- hclust(dist, method = "single")

#Compute the persistence barcodes with the library TDA
maxscale <- 10
maxdimension <- 2
DiagRips <- ripsDiag(X = dataList, maxdimension, maxscale,
                     library = "Gudhi", location = TRUE,
                     printProgress = TRUE)

#Plot the results with some nice layout
mat <- matrix(c(1, 2, 1, 3), 2, 2, byrow = TRUE)
layout(mat = mat)
plot(hc, labels = FALSE, main = "", ann = FALSE)
plot(DiagRips[["diagram"]], barcode = TRUE, main = "")
plot(dataList, ann = FALSE)