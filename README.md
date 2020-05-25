# UMD CMSC250 Textbook

Justin Goodman

`Version 0.1`

## Compilation

```
sudo apt install texlive-latex-base texlive-latex-extra texlive-science

pdflatex -synctex=1 -interaction=nonstopmode "main".tex
```

Interesting tool: `apt-file -x search '/algpseudocode.sty$'`

## Progress

`done` should be taken with a grain of salt. They are "done" as a draft.

* `done` Intro
* `done` Logic
* `done` Set Theory
* `done` Number Theory
* `8/10` Combinatorics and Probability
* `done` Functions and Relations
* `8/10` Countability
* `3/10` Graph Theory
* `5/10` Asymptotic Analysis
* `4/10` Conclusion

Need to figure out how to compile each chapter individually. [sol?](https://tex.stackexchange.com/questions/31334/how-to-create-individual-chapter-pdfs-from-included-texs) [maybe?](https://tex.stackexchange.com/questions/231861/how-do-i-get-consecutive-section-numbering-for-an-entire-document-using-subfiles)

Also, maybe re-structure Number Theory chapter. It's really long

## misc ideas n stuff

graph theory section
-> put the 4-color theorem

x^2 + y^3 = 1 has no solutions if y is odd

