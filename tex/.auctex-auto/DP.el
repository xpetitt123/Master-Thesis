(TeX-add-style-hook
 "DP"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("book" "12pt" "a4paper" "twoside" "final")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("inputenc" "utf8") ("fontenc" "IL2") ("babel" "english")))
   (TeX-run-style-hooks
    "latex2e"
    "book"
    "bk12"
    "inputenc"
    "fontenc"
    "babel"
    "palatino"
    "longtable"
    "lipsum"
    "amsmath"
    "amssymb"
    "amsthm"
    "graphicx")
   (TeX-add-symbols
    '("sectionmark" 1)
    '("chaptermark" 1)
    "Cbb"
    "Rbb"
    "Zbb"
    "Nbb"))
 :latex)

