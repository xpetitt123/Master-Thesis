library(TDA)
setwd("/home/tomasp/Dokumenty/Master_Thesis/scripts/")

Circle1 <- circleUnif(20)
maxscale <- 5
maxdimension <- 1

DiagRips <- ripsDiag(X = Circle1, maxdimension = maxdimension, maxscale = maxscale,
                     library = c("GUDHI", "Dionysus"), location = TRUE,
                     printProgress = TRUE)

#Didn't find a more intelligent way of getting the size as the output

x <- c(20,30,60,80,100) #number of points in Circle1
y <- c(1350, 10700, 36050, 85400, 166750) #corresponding sizes of VR complexes

pdf("../figures/sizeofVR.pdf",
    width = 5.5, height = 5,
    bg = "white", colormodel = "cmyk")
plot(x,y, type = "b", main = "Plot of the size of the VR complex on the unit circle",
     xlab = "Number of points in the sampled circles", ylab = "Sizes of the VR complexes")
dev.off()
