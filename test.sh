#!/bin/bash

docker run -v $(pwd):/doc/ -t -i --rm credmp/docker-pandoc \
pandoc introduction.org \
       -o "document.pdf" \
    -H meta/options.sty \
    -N \
    --listings \
    --metadata-file=preamble.yaml \
    --from org \
    --template "eisvogel.tex" \
    --toc -V toc-own-page=true \
    --filter=pandoc-latex-environment \
    --filter=pandoc-crossref   \
    --filter=pandoc-citeproc   \
    --biblio=meta/my-biblio.bib \
    --csl=meta/apa.csl


#    --listings \
#       -o "document.pdf" \
