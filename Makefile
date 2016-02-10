PDF=evince
OS=$(shell uname)
ifeq ($(OS), Darwin)
PDF=open
endif

default: main

main: main.tex chapters/*/main.tex
	latexmk -pdf main
	$(PDF) main.pdf &

clean:
	latexmk -C
