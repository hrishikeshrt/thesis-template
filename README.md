# Thesis Template

Thesis Template for IIT Kanpur (PhD/MS/MTech etc.)


## Instructions

* Build: `make`
  - Generates a single `.tex` file `final.tex` combining `preamble`, `prelude` and `chapters`
  - Compiles `final.tex` into `final.pdf`
* Clean: `make clean`
  - Remove all auxiliary files (retains `final.tex` and `final.pdf`)
* Clear: `make clear`
  - Remove all generated files, including auxiliary and final

## Structure

* `prelude.tex` -- personal information 
* `citation.bib` -- bibliography
* `prelude/*.tex` -- prelude for thesis (`title`, `abstract`, `dedication`, `acknowledgments`)
* `preamble/*.tex` -- preamble for `main.tex` (`packages`, `format`, `macros`, `shortcuts`)
* `chapters/*.tex` -- chapters
* `graphics/*` -- graphics to be included (images, pdfs)
* `main.tex`  -- main file
* `Makefile` -- makefile (`make`, `make clean`, `make clear`)

## Requirements

* `latexpand` -- to create a single `.tex` 
* `latexmk` --  easy latex compilation (handle bibliography etc. issues)

## Credits

* Forked from https://www.overleaf.com/latex/templates/indian-institute-of-technology-kanpur-thesis-template/jxphypgkqdmh
