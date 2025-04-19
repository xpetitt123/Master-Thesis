pdflatex -shell-escape  --interaction=nonstopmode DP.tex
bibtex DP.aux
pdflatex -shell-escape --interaction=nonstopmode DP.tex
pdflatex -shell-escape  --interaction=nonstopmode DP.tex
rm DP.aux DP.bbl DP.toc DP.log DP.out DP.blg DP.idx DP.lof DP.lot
