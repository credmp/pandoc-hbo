#!/bin/bash

if [ ! -e eisvogel.tex ];
then
    echo "Downloading template"
    # Retrieve the eisvogel template file
    wget https://raw.githubusercontent.com/credmp/pandoc-latex-template/master/eisvogel.tex
fi

# build the document
docker run -v $(pwd):/doc/ -t -i credmp/pandoc \
pandoc preamble.md \
       001-intro.md \
       999-reference.md \
       -o "document.pdf" \
    -H meta/options.sty \
    -N \
    --from markdown \
    --template "eisvogel.tex" \
    --listings \
    --toc -V toc-own-page=true \
    --filter=pandoc-latex-environment \
    --filter=pandoc-citeproc   \
    --biblio=meta/my-biblio.bib \
    --csl=meta/apa.csl
