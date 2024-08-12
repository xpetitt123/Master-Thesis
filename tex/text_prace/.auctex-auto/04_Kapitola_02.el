(TeX-add-style-hook
 "04_Kapitola_02"
 (lambda ()
   (LaTeX-add-labels
    "fig:simplex_1"
    "fig:simplex_2")
   (LaTeX-add-environments
    "definition"
    "theorem"
    "lemma"
    "corollary"
    "example"))
 :latex)

