PDF=evince
OS=$(shell uname)
ifeq ($(OS), Darwin)
PDF=open
endif

default: main

main: main.tex chapters/*/main.tex main.bib
	latexmk -pdf main
	$(PDF) main.pdf 2> /dev/null &

clean:
	latexmk -C
	rm main.bbl main.ttt main.fff
