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
* `4/10` Asymptotic Analysis
* `4/10` Conclusion

Need to figure out how to compile each chapter individually. [sol?](https://tex.stackexchange.com/questions/31334/how-to-create-individual-chapter-pdfs-from-included-texs) [maybe?](https://tex.stackexchange.com/questions/231861/how-do-i-get-consecutive-section-numbering-for-an-entire-document-using-subfiles)

Also, maybe re-structure Number Theory chapter. It's really long

## misc ideas n stuff
---
put this in 250 book algo section
-> https://www.youtube.com/watch?v=EHp4FPyajKQ
-> also halting problem

counting:
double-induction proof that n! divides the product of n consecutive integers
-> nCk is an integer

graph theory section
-> put the 4-color theorem

n^4|10 -> n|10
multiple paths to the same answer

x^2 + y^3 = 1 has no solutions if y is odd

change up my statement about grades? b/c grades are definitely a concern for some ppl, and it's wrong of me to disregard your concerns by saying grades don't matter
---