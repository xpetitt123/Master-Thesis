;; -*- lexical-binding: t; -*-

(TeX-add-style-hook
 "DP"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("book" "12pt" "a4paper" "twoside" "final")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("inputenc" "utf8") ("fontenc" "IL2") ("babel" "english") ("palatino" "") ("longtable" "") ("amsmath" "") ("amssymb" "") ("amsthm" "") ("graphicx" "") ("subfig" "") ("enumitem" "") ("tikz" "") ("smartdiagram" "") ("url" "") ("hyperref" "") ("tikz-cd" "") ("minted" "")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "href")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
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
    "url"
    "hyperref"
    "tikz-cd"
    "minted")
   (TeX-add-symbols
    '("sectionmark" 1)
    '("chaptermark" 1)
    "Cbb"
    "Rbb"
    "Zbb"
    "Nbb"))
 :latex)

