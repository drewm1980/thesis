TARGETS=main.pdf 

.PHONY:all
all: ${TARGETS} 

ENGINE=-pdf
#ENGINE=-pdfdvi

# Always build main.pdf target, letting latexmk figure out all of the deps of main.pdf automatically
main.pdf:main.tex 

%.tex:%.dia
	dia $< -e $@ -t tex

%.pdf:%.tex
	latexmk ${ENGINE} $<

.PHONY:clean
clean:
	rm -f ${TARGETS} *.brf *.dvi *.log *.fdb_latexmk *.bbl *.aux
	latexmk -c

