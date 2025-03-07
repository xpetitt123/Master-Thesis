library(TDA)
setwd("/home/tomasp/Dokumenty/Master_Thesis/scripts/")

maxscale <- 5
maxdimension <- 1

# A more dedicated person would write a template/macro
# or a function to avoid repetition. Alas, I am not.

Circle1 <- circleUnif(60)
Circle2 <- circleUnif(60) + 4
CircleSet <- rbind(Circle1, Circle2)
CircleSet2 <- rbind(Circle1, Circle2 - 2)
CircleSet3 <- rbind(Circle1, Circle2 - 3)
CircleSet4 <- rbind(Circle1, Circle2 - 3.5)

DiagRips <- ripsDiag(
    X = CircleSet, maxdimension, maxscale,
    library = "GUDHI", location = TRUE,
    printProgress = TRUE
)

DiagRips2 <- ripsDiag(
    X = CircleSet2, maxdimension, maxscale,
    library = "GUDHI", location = TRUE,
    printProgress = TRUE
)

DiagRips3 <- ripsDiag(
    X = CircleSet3, maxdimension, maxscale,
    library = "GUDHI", location = TRUE,
    printProgress = TRUE
)

DiagRips4 <- ripsDiag(
    X = CircleSet4, maxdimension, maxscale,
    library = "GUDHI", location = TRUE,
    printProgress = TRUE
)

mat <- matrix(c(1, 3, 5, 7, 2, 4, 6, 8), 2, 4, byrow = TRUE)
layout(mat = mat)
plot(CircleSet, ann = FALSE, ylim = c(-2, 6), xlim = c(-2, 6))
plot(DiagRips[["diagram"]], barcode = TRUE, main = "")
plot(CircleSet2, ann = FALSE, ylim = c(-2, 6), xlim = c(-2, 6))
plot(DiagRips2[["diagram"]], barcode = TRUE, main = "")
plot(CircleSet3, ann = FALSE, ylim = c(-2, 6), xlim = c(-2, 6))
plot(DiagRips3[["diagram"]], barcode = TRUE, main = "")
plot(CircleSet4, ann = FALSE, ylim = c(-2, 6), xlim = c(-2, 6))
plot(DiagRips4[["diagram"]], barcode = TRUE, main = "")

mat <- matrix(c(1, 2, 3, 4), 2, 2, byrow = TRUE)
layout(mat = mat)
plot(DiagRips[["diagram"]], barcode = FALSE, main = "")
plot(DiagRips2[["diagram"]], barcode = FALSE, main = "")
plot(DiagRips3[["diagram"]], barcode = FALSE, main = "")
plot(DiagRips4[["diagram"]], barcode = FALSE, main = "")

# The case for the outlier points added into the picture

Outlier <- rbind(Circle1, c(5, 5), c(10, -3))
DiagRips5 <- ripsDiag(
    X = Outlier, maxdimension, maxscale,
    library = "GUDHI", location = TRUE,
    printProgress = TRUE
)

mat <- matrix(c(1, 2, 3, 3), 2, 2, byrow = TRUE)
layout(mat = mat)
plot(Outlier, ann = FALSE)
plot(DiagRips5[["diagram"]], barcode = FALSE, main = "")
plot(DiagRips5[["diagram"]], barcode = TRUE, main = "")
