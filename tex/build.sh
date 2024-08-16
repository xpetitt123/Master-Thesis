pdflatex --interaction=nonstopmode DP.tex
bibtex DP.aux
pdflatex --interaction=nonstopmode DP.tex
pdflatex --interaction=nonstopmode DP.tex
rm DP.aux DP.bbl DP.toc DP.log DP.out DP.blg DP.idx
zathura DP.pdf
