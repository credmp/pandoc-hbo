# Pandoc voor HBO

Dit is een documentatie systeem voor het Nederlands hoger beroepsonderwijs. Het gebruik Pandoc en Markdown documenten om een HBO document te maken. Het bevat:

- Voorblad
- Inhoudsopgave
- Hoofdstukken/secties
- APA citaten
- APA bibliografie

## Benodigde paketten

Op een Debian gebasseerd Linux systeem zijn de volgende paketten nodig.

```
apt update
apt install -y texlive-fonts-recommended texlive-latex-extra texlive-latex-recommended texlive-pstricks texlive-lang-european texlive-fonts-recommended texlive-fonts-extra
apt install -y pandoc pandoc-citeproc
apt install -y poppler-utils
apt install python3-pip
pip3 install pandoc-latex-environment
```

En installeer vervolgens de losse latex packages

```
tlmgr init-usertree
tlmgr install xecjk filehook unicode-math ucharcat pagecolor babel-german ly1 mweights sourcecodepro sourcesanspro mdframed needspace fvextra footmisc footnotebackref background
tlmgr install awesomebox fontawesome5
```

## Personaliseren

Pas de volgende documenten aan:

- preamble.md
- meta/background.pdf

Als het document wat je schrijft in het engels is, verander dan de taal indicator in preamble.md naar en ipv nl.
