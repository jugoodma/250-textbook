# dank

all: main.pdf

main.pdf: main.tex
	pdflatex -synctex=1 -interaction=nonstopmode "main".tex

# todo!
# clean:
