PDF=evince
OS=$(shell uname)
ifeq ($(OS), Darwin)
PDF=open
endif

default: main

main: main.tex capitulos/*/main.tex
	latexmk main
	dvipdf main.dvi
	$(PDF) main.pdf &

clean:
	rm -rf *.aux main.dvi *.fdb_latexmk *.fls *.idx *.ilg *.ind *.lof *.log\
		   *.lot *.out.ps main.pdf *.toc
