all: .publications .thesis

synopsis: .publications .synopsis

.publications: publications.tex publications.bib
	latexmk -pdflatex='xelatex %O %S' -pdf -ps- -dvi- publications.tex

.thesis: $(wildcard *.tex) $(wildcard chapters/*.tex) $(wildcard *.cls) citations.bib
	latexpand main.tex > single.tex
	cat single.tex > final.tex
	latexmk -pdflatex='xelatex %O %S' -pdf -ps- -dvi- final.tex -jobname=thesis

.synopsis: $(wildcard *.tex) $(wildcard synopsis/*.tex) $(wildcard *.cls) citations.bib
	latexpand main_synopsis.tex > single_synopsis.tex
	cat single_synopsis.tex > final_synopsis.tex
	latexmk -pdflatex='xelatex %O %S' -pdf -ps- -dvi- final_synopsis.tex -jobname=synopsis

clear:
	latexmk -c -bibtex publications.tex
	latexmk -c -bibtex main.tex -jobname=thesis
	latexmk -c -bibtex main_synopsis.tex -jobname=synopsis
	rm -vf *.aux *.bbl *.synctex.gz *.out *.log *.blg *.bak *.fls *.fdb_latexmk 2> /dev/null
	rm -vf *.dvi *.pdf *.ps
	rm -vf single.tex final.tex 2> /dev/null
	rm -vf single_synopsis.tex final_synopsis.tex 2> /dev/null
	rm -vf *.lop *.lof *.lot *.toc *.run.xml 2> /dev/null

clean:
	latexmk -c -bibtex publications.tex
	latexmk -c -bibtex main.tex -jobname=thesis
	latexmk -c -bibtex main_synopsis.tex -jobname=synopsis
	rm -vf single.tex 2> /dev/null
	rm -vf single_synopsis.tex 2> /dev/null
	rm -vf *.lop *.lof *.lot *.toc *.run.xml 2> /dev/null
