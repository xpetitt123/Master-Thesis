library(ggtree)
require(treeio)

pdf("../figures/influenzaTree.pdf",
    width = 5, height = 3.5,
    bg = "white", colormodel = "cmyk")
setwd("/home/tomasp/Dokumenty/Master_Thesis/scripts/")
beast_tree <- read.beast("../src/MCC_FluA_H3.tree")
ggtree(beast_tree, mrsd = "2013-01-01") + theme_tree2()
dev.off()
