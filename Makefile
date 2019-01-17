DOCKER_RUN=docker run -ti --rm -v $(shell pwd):/var/thesis -w /var/thesis blang/latex:ctanfull

default: main

shell:
	$(DOCKER_RUN) bash

main: main.tex chapters/*/main.tex main.bib
	$(DOCKER_RUN) latexmk -pdf main

clean:
	$(DOCKER_RUN) latexmk -C
	rm -f main.bbl
