#!/bin/bash

echo "Building org-ref reference document"

docker run -v $(pwd):/doc/ -t -i --rm credmp/docker-pandoc \
pandoc examples/org-ref.org \
       -o "examples/org-ref.pdf" \
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

echo "Building professional report"

docker run -v $(pwd):/doc/ -t -i --rm credmp/docker-pandoc \
pandoc examples/researchreport/rapport.org \
       -o "examples/researchreport/document.pdf" \
    -H meta/options.sty \
    -N \
    --listings \
    -B examples/researchreport/management.tex \
    --metadata-file=examples/researchreport/preamble.yaml \
    --from org \
    --template "eisvogel.tex" \
    --toc -V toc-own-page=true \
    --filter=pandoc-latex-environment \
    --filter=pandoc-crossref   \
    --filter=pandoc-citeproc   \
    --biblio=meta/my-biblio.bib \
    --csl=meta/apa.csl
