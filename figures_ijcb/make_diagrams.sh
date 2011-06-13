#!/bin/bash

# jumping through hoops just to get a diagram with typeset expressions.
dia pipeline_simplified.dia -e pipeline_simplified.tex -t tex
latexmk -pdfdvi pipeline_simplified_wrapper.tex
mv pipeline_simplified_wrapper.pdf pipeline_simplified.pdf
pdfcrop --margins "0" pipeline_simplified.pdf pipeline_simplified.pdf

# convert some stuff from eps to pdf.  Some of these could be done directly from inkscape.
#epstopdf arrays.eps
#epstopdf cpu_caches.eps
#epstopdf gpu_caches.eps
epstopdf time_vs_matrix_size_constant_tol.eps
epstopdf alignment_runtime_graph.eps
epstopdf speedVsResolution.eps
epstopdf accuracyVsResolution.eps





