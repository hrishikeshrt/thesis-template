# Thesis Template

Thesis Template for IIT Kanpur (PhD/MS/MTech etc.)


## Instructions

* Build: `make`
  - Generates a single `.tex` file `final.tex` combining `preamble`, `prelude` and `chapters`
  - Compiles `final.tex` into `thesis.pdf` (using `-jobname=thesis`)
* Build: `make synopsis`
  - Generates a single `.tex` file `final_synopsis.tex` combining `preamble`, `prelude_synopsis` and `synopsis`
  - Compiles `final_synopsis.tex` into `synopsis.pdf` (using `-jobname=synopsis`)
* Clean: `make clean`
  - Remove all auxiliary files (retains `final*.tex` and `*.pdf`)
* Clear: `make clear`
  - Remove all generated files, including auxiliary and final

## Structure

* `prelude.tex` -- personal information 
* `prelude_synopsis.tex` -- personal information for synopsis 
* `citation.bib` -- bibliography
* `publications.bib` -- own publications (used to display `Publications` page)
* `prelude/*.tex` -- prelude for thesis (`title`, `abstract`, `dedication`, `acknowledgments`)
* `preamble/*.tex` -- preamble for `main.tex` (`packages`, `format`, `macros`, `shortcuts`)
* `chapters/*.tex` -- chapters
* `graphics/*` -- graphics to be included (images, pdfs)
* `main.tex`  -- main file
* `main_synopsis.tex` -- main file for synopsis
* `Makefile` -- makefile (`make`, `make synopsis`, `make clean`, `make clear`)

## Requirements

* `latexpand` -- to create a single `.tex` 
* `latexmk` --  easy latex compilation (handle bibliography etc. issues)

## Credits

* Forked from https://www.overleaf.com/latex/templates/indian-institute-of-technology-kanpur-thesis-template/jxphypgkqdmh
