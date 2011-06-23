TARGETS=main.pdf 

.PHONY:all
all: ${TARGETS} 

ENGINE=-pdf

%.pdf:%.tex
	latexmk ${ENGINE} $<

.PHONY:clean
clean:
	rm -f ${TARGETS} *.brf *.dvi *.log *.fdb_latexmk *.bbl *.aux
	latexmk -c

