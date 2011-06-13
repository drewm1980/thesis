#!/bin/bash

# jumping through hoops just to get a diagram with typeset expressions.
dia pipeline_simplified.dia -e pipeline_simplified.tex -t tex
latexmk -pdfdvi pipeline_simplified_wrapper.tex
mv pipeline_simplified_wrapper.pdf pipeline_simplified.pdf
pdfcrop --margins "0" pipeline_simplified.pdf pipeline_simplified.pdf
