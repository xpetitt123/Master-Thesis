;; -*- lexical-binding: t; -*-

(TeX-add-style-hook
 "09_Kapitola_04"
 (lambda ()
   (LaTeX-add-labels
    "tab:penguins"
    "fig:penguins_scatter"
    "fig:penguins_projection"
    "fig:digits"
    "fig:digits_projection"
    "fig:fmnist"
    "fig:fmnist_connectivity"
    "fig:fmnist_connectivity_hammer"))
 :latex)

