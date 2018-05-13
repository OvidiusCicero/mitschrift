pandoc --from=markdown+yaml_metadata_block-smart --to=latex-smart --pdf-engine=xelatex --template=vorlagen/latex.tex --output=latex_out/gespraech_%2-%3.tex --table-of-contents --standalone --variable=geometry:"a4paper, margin=2.5cm, %2" --variable=mainfont:"Linux Libertine" --variable=sansfont:"Linux Biolinum" --variable=numcols:"%1" --variable=%3 --variable=%2 --variable=graphics teil01.md teil02.md teil03.md metadata.yaml
cd latex_out
xelatex --interaction=nonstopmode gespraech_%2-%3.tex
cd ..
copy latex_out\gespraech_%2-%3.pdf out\gespraech_%2-%3.pdf