## -*- makefile -*- ##################################################
## Filename:      Makefile
## Version:       1.0
## Description:   Single LaTeX file compilation
## Author:        Yannick Copin <y.copin@ipnl.in2p3.fr>
## Created at:    Tue May 14 15:21:22 2002
## Modified at:   Tue May 14 17:02:24 2002
## Modified by:   Yannick Copin <y.copin@ipnl.in2p3.fr>
######################################################################

# This makefile provides compilation commands up to PDF for single-file 
# sources (including bibliography and index)

# Based upon
# * Doxygen LaTeX Makefile
# * Dave Richerby's wonderful LaTeX makefile 

SHELL := /bin/bash

# Logfile
LOG = compile.log

# Stop GNU make from overzealous deletion of intermediate files
.PRECIOUS: %.dvi %.ps %.pdf

# Rules ==============================

main:
	rm -f main.pdf
	make main.pdf
	mv main.pdf out/
	make clean

chapters:
	rm -f *.pdf
	for file in $(wildcard ch-*.tex) ; do \
		make $${file//.tex/.pdf} ; done
	mv ch-*.pdf out/
	make clean

%.pdf: %.tex
	@echo "Running latex on $< (compilation log in $(LOG))..."
	@pdflatex -- $< > $(LOG) 2>&1
#	Bibliography (if needed)
	@if (egrep -s 'undefined references' $(subst .tex,.log,$<)); then \
	    echo "Running bibtex (biber)..." ;                                    \
	    biber $(subst .tex,,$<) >> $(LOG) 2>&1 ;                 \
	fi
#	Index (if needed)
	@if (egrep -s 'Writing index file' $(subst .tex,.log,$<)); then \
	    echo "Running makeindex..." ;                               \
	    makeindex $(subst .tex,.idx,$<) >> $(LOG) 2>&1 ;            \
	fi
#	Cross-references (up to 5 times)
	@latex_count=1 ;                                               \
	while ( egrep -s 'Rerun (LaTeX|to get cross-references right)' \
		    $(subst .tex,.log,$<)                              \
		 && [ $$latex_count -lt 5 ] ) ; do                     \
	   echo "Re-running LaTeX ($$latex_count)..." ;                \
	   pdflatex $< >> $(LOG) 2>&1 ;                                   \
	   latex_count=`expr $$latex_count + 1` ;                      \
	done

# todo
clean:
	-rm -f *.aux *.log *.toc *.lof *.lot \
	       *.idx *.ind *.ilg *.out *.bbl *.blg *.brf *.bcf \
		   *.maf *.mtc* *.synctex.gz *.run.xml \
	       *.dvi *.ps *.pdf
