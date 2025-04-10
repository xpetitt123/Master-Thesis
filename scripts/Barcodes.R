library(TDA)
setwd("/home/tomasp/Dokumenty/Master_Thesis/scripts/")

Circle1 <- circleUnif(60)
maxscale <- 5
maxdimension <- 1

DiagRips <- ripsDiag(X = Circle1, maxdimension, maxscale,
                     library = "GUDHI", location = TRUE,
                     printProgress = TRUE)

par(mfrow = c(1, 2))
plot(DiagRips[["diagram"]], main = "Persistence Diagram")
plot(DiagRips[["diagram"]], barcode = TRUE, main = "Persistence Barcode")
