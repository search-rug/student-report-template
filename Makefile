#
# This is a blunt Makefile.
#
# If you want a more sophisticated Makefile then take a look at
# https://tex.stackexchange.com/questions/40738/how-to-properly-make-a-latex-project
# for various options and references.
#
# `man latexmk` helps as well.
#

DOCUMENT=main

.PHONY: all clean bibtex

all:
	$(info Make all ...)
	latexmk -pdf -pdflatex="pdflatex -interaction=nonstopmode" -use-make $(DOCUMENT)

clean:
	$(info Make clean ...)
	latexmk -C -silent
	$(RM) *.bbl *.swp

bibtex:
	$(info Make bibtex ...)
	bibtex $(THESIS)

