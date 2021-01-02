#!/bin/bash

docker run -v $(pwd):/doc/ -t -i --rm credmp/docker-pandoc \
 introduction.org \
       -o "org-introduction.pdf" \
    -H meta/options.sty \
    -N \
    --listings \
    --metadata-file=preamble.yaml \
    --from org \
    --template "eisvogel.tex" \
    --toc -V toc-own-page=true \
    --filter=pandoc-latex-environment \
    --filter=pandoc-crossref   \
    --citeproc \
    --biblio=meta/my-biblio.bib \
    --csl=meta/apa.csl \
    --lua-filter meta/caption-filter.lua 


#    --listings \
#       -o "document.pdf" \
#    --filter=pandoc-citeproc   \

