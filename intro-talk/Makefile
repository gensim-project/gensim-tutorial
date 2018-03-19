
FIGURES_SVG=$(shell ls figures/*.svg)
FIGURES_PDF=$(FIGURES_SVG:.svg=.pdf)

figures/%.pdf.tmp : figures/%.svg
	inkscape -f $< --export-pdf=$@

figures/%.pdf : figures/%.pdf.tmp
	cp $< $@

.PHONY:main.pdf 

main.pdf : $(FIGURES_PDF)
	latexmk -pdf -pdflatex="pdflatex -synctex=1 -interaction=nonstopmode" main.tex

clean:
	latexmk -C
	rm -f $(FIGURES_PDF)
