default: main

main: main.tex 
	latexmk main
	dvipdf main.dvi
	evince main.pdf &

clean:
	rm -rf *.aux main.dvi *.fdb_latexmk *.fls *.idx *.ilg *.ind *.lof *.log\
		   *.lot *.out.ps main.pdf *.toc
