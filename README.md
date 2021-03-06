# Pandoc voor HBO

Dit is een documentatie systeem voor het Nederlands hoger beroepsonderwijs. Het gebruik Pandoc en Markdown documenten om een HBO document te maken. Het bevat:

- Voorblad
- Inhoudsopgave
- Hoofdstukken/secties
- APA citaten
- APA bibliografie

## Docker

Er is een docker image bijgesloten wat de benodigde pakketen geinstalleerd heeft staan. Door `run.sh` de eerste keer te draaien zal het latex template, `eisvogel`, worden opgehaald en het lokale docker image worden gebouwd. 

Dit zorgt er voor dat je niet alle latex files zelf hoeft te installeren en eventueel compatibiliteitsproblemen zelf moet oplossen.

## Alternatief Benodigde paketten

Voor als je het toch liever zelf doet.

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

# Voorbeelden

Also look at the included PDF document for a sample of what it can do.

![Document Voorbeeld 1](document-1.png)

![Document Voorbeeld 2](document-2.png)

![Document Voorbeeld 3](document-3.png)

![Document Voorbeeld 6](document-6.png)
