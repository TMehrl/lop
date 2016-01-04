#!/bin/sh
basename=lop
echo "============================================ pdflatex $basename.tex ============================================" && \
/usr/local/texlive/2012/bin/x86_64-darwin/pdflatex "$basename.tex" && \
echo "============================================ bibtex ${basename}1.aux ============================================" && \
/usr/local/texlive/2012/bin/x86_64-darwin/bibtex "${basename}1.aux" && \
echo "============================================ bibtex ${basename}2.aux ============================================" && \
/usr/local/texlive/2012/bin/x86_64-darwin/bibtex "${basename}2.aux" && \
echo "============================================ bibtex ${basename}3.aux ============================================" && \
/usr/local/texlive/2012/bin/x86_64-darwin/bibtex "${basename}3.aux" && \
echo "============================================ pdflatex $basename.tex ============================================" && \
/usr/local/texlive/2012/bin/x86_64-darwin/pdflatex "$basename.tex" 
