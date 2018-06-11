function build_base {
pandoc --from=markdown+yaml_metadata_block-smart --table-of-contents --standalone teil01.md teil02.md teil03.md metadata.yaml "$@"
}

function build_html {
build_base --to=html5 --self-contained --template=vorlagen/html.xhtml --output=out/gespraech.xhtml --css=style.css
}

function build_latexvorlage {
build_base --to=latex-smart --pdf-engine=xelatex --template=vorlagen/latex.tex --output=latex_out/gespraech_$2-$3.tex --variable=geometry:"a4paper, margin=2.5cm, $2" --variable=romanfont:"Linux Libertine" --variable=sansfont:"Linux Biolinum" --variable=numcols:"$1" --variable=$3 --variable=$2 --variable=graphics --variable=documentclass:scrartcl
cd latex_out
xelatex --interaction=nonstopmode gespraech_$2-$3.tex
cd ..
cp latex_out/gespraech_$2-$3.pdf out/gespraech_$2-$3.pdf
}

function build_latex_portrait_simple {
build_latexvorlage 2 portrait simple
}

function build_latex_portrait_nicetitle {
build_latexvorlage 2 portrait nicetitle
}

function build_latex_landscape_simple {
build_latexvorlage 3 landscape simple
}

function build_latex_landscape_nicetitle {
build_latexvorlage 3 landscape nicetitle
}

function build_epub {
build_base --to=epub --output=out/gespraech.epub --css=style.css
}

function build_txt {
build_base --to=plain --output=out/gespraech.txt
}

function build_all {
build_html
build_txt
build_epub
build_latex_portrait_simple
build_latex_portrait_nicetitle
build_latex_landscape_simple
build_latex_landscape_nicetitle
}

build_$1