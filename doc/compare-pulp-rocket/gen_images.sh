#!/bin/bash 
for i in `ls *.svg`; do 
  file=${i%.*};
  echo ${file}
  pdf=${file}.pdf;
  tex=${file}.pdf_tex;
  echo ' ==== GERANDO IMAGEM:' $file '===='
  inkscape -D -z --file=$i --export-pdf=$pdf --export-latex &> ${file}.log
  sed -i.bak '/Not supported by viewer/d' $tex;
  sed -i.bak 's/\\smash{/\\smash{\\tiny /g' $tex;
  sed -i.bak 's/<br>//g' $tex;
  rm ${tex}.bak
done
