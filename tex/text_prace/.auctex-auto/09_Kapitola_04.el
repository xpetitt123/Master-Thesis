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
    "fig:fmnist_connectivity_hammer"
    "fig:mapper_circles"
    "fig:mapper_circles_graph"
    "fig:mapper_circles_coordinates"
    "fig:mapper_circles_pca"
    "fig:mapper_circles_groups"
    "fig:mapper_circles_sum"
    "fig:mapper_log_return"
    "fig:mapper_volatility"
    "fig:mapper_volatility_low"
    "fig:mapper_volatility_high"
    "fig:mapper_volatility_hpq"))
 :latex)

