;; -*- lexical-binding: t; -*-

(TeX-add-style-hook
 "DP"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("book" "12pt" "a4paper" "twoside" "final")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("inputenc" "utf8") ("fontenc" "IL2") ("babel" "english") ("palatino" "") ("longtable" "") ("amsmath" "") ("amssymb" "") ("amsthm" "") ("graphicx" "") ("subfig" "") ("enumitem" "") ("tikz" "") ("smartdiagram" "") ("biblatex" "backend=biber" "style=alphabetic" "sorting=ynt")))
   (TeX-run-style-hooks
    "latex2e"
    "book"
    "bk12"
    "inputenc"
    "fontenc"
    "babel"
    "palatino"
    "longtable"
    "amsmath"
    "amssymb"
    "amsthm"
    "graphicx"
    "subfig"
    "enumitem"
    "tikz"
    "smartdiagram"
    "biblatex")
   (TeX-add-symbols
    '("sectionmark" 1)
    '("chaptermark" 1)
    "Cbb"
    "Rbb"
    "Zbb"
    "Nbb")
   (LaTeX-add-bibliographies
    "./Bibliography"))
 :latex)

