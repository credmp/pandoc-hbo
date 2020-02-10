#!/bin/bash

docker run -v $(pwd):/doc/ -t -i --rm credmp/docker-pandoc \
pandoc introduction.org \
       -o "document.pdf" \
    -H meta/options.sty \
    -N \
    --metadata-file=preamble.yaml \
    --from org \
    --template "eisvogel.tex" \
    --listings \
    --toc -V toc-own-page=true \
    --filter=pandoc-latex-environment \
    --filter=pandoc-citeproc   \
    --biblio=meta/my-biblio.bib \
    --csl=meta/apa.csl


#       -o "document.pdf" \
