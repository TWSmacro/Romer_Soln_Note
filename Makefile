LATEXMK := latexmk
MAIN := main.tex
LATEXMK_FLAGS := -xelatex -synctex=1 -interaction=nonstopmode -file-line-error -outdir=.

.PHONY: pdf clean distclean

pdf:
	$(LATEXMK) $(LATEXMK_FLAGS) $(MAIN)

clean:
	$(LATEXMK) -c -outdir=. $(MAIN)

distclean:
	$(LATEXMK) -C -outdir=. $(MAIN)
