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

* `9/10` Intro
* `done` Logic
* `done` Set Theory
* `done` Number Theory
* `5/10` Combinatorics and Probability
* `done` Functions and Relations
* `4/10` Countability
* `3/10` Graph Theory
* `4/10` Asymptotic Analysis
* `1/10` Conclusion

Need to figure out how to compile each chapter individually. [sol?](https://tex.stackexchange.com/questions/31334/how-to-create-individual-chapter-pdfs-from-included-texs) [maybe?](https://tex.stackexchange.com/questions/231861/how-do-i-get-consecutive-section-numbering-for-an-entire-document-using-subfiles)

Also, maybe re-structure Number Theory chapter. It's really long
