;; -*- lexical-binding: t; -*-

(TeX-add-style-hook
 "04_Kapitola_02"
 (lambda ()
   (LaTeX-add-labels
    "fig:simplex_1"
    "fig:simplex_2"
    "fig:nerve_1"
    "theorem:Nerve theorem")
   (LaTeX-add-environments
    "definition"
    "theorem"
    "lemma"
    "corollary"
    "example"))
 :latex)

