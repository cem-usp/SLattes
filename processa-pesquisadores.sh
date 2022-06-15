#!/bin/bash

for f in cvs/*.xml; do
    f="${f##*/}"
    f="${f%.*}"
    echo "Processando ${f}"
    xsltproc -v lattes2mods.xsl cvs/$f.xml > resultados/$f.mods
    xml2bib -b -w resultados/$f.mods > resultados/$f.bib
done
