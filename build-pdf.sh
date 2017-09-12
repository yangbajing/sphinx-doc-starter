#!/bin/sh

make latex
cd build/latex/
xelatex *.tex
xelatex *.tex
mv sphinx.pdf Sphinx文档起步.pdf

