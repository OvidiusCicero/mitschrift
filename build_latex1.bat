pandoc --from=markdown+yaml_metadata_block-smart --to=latex-smart --pdf-engine=xelatex --output=out/gespraechlatex1.pdf --table-of-contents --standalone --variable geometry="a4paper, margin=2.5cm" teil01.md teil02.md metadata.yaml