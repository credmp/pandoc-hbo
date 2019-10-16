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
apt install -y texlive-fonts-recommended texlive-latex-extra texlive-latex-recommended texlive-pstricks texlive-lang-european
apt install -y pandoc pandoc-citeproc
```

## Personaliseren

Pas de volgende documenten aan:

- preamble.md
- meta/background.pdf

Als het document wat je schrijft in het engels is, verander dan de taal indicator in preamble.md naar en ipv nl.