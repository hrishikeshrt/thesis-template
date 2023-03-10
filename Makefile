LATEX = xelatex
BIBTEX = bibtex

all: .thesis

.thesis: $(wildcard *.tex) $(wildcard chapters/*.tex) $(wildcard *.cls) citations.bib
	latexpand main.tex > final.tex
	latexmk -pdflatex='xelatex %O %S' -pdf -ps- -dvi- final.tex

.PHONY: all clean

clear:
	latexmk -c -bibtex
	rm -vf *.aux *.bbl *.synctex.gz *.out *.log *.blg *.bak *.fls *.fdb_latexmk 2> /dev/null
	rm -vf *.dvi *.pdf *.ps
	rm -vf final.tex 2> /dev/null
	rm -vf *.lop *.lof *.toc *.run.xml 2> /dev/null

clean:
	latexmk -c -bibtex
	rm -vf *.lop *.lof *.toc *.run.xml 2> /dev/null
