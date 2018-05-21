call build_base.bat --to=latex-smart --pdf-engine=xelatex --template=vorlagen/latex.tex --output=latex_out/gespraech_%2-%3.tex --variable=geometry:"a4paper, margin=2.5cm, %2" --variable=mainfont:"Linux Libertine" --variable=sansfont:"Linux Biolinum" --variable=numcols:"%1" --variable=%3 --variable=%2 --variable=graphics --variable=documentclass:scrartcl
cd latex_out
xelatex --interaction=nonstopmode gespraech_%2-%3.tex
cd ..
copy latex_out\gespraech_%2-%3.pdf out\gespraech_%2-%3.pdf