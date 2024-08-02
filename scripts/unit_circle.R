library(TDAstats)
setwd("/home/tomasp/Dokumenty/Master_Thesis/scripts/")

df <- circle2d

pdf("../figures/unit_circle.pdf",
    width = 3, height = 3.5,
    bg = "white", colormodel = "cmyk")
plot(df, xlab = "X", ylab = "Y")
dev.off()
