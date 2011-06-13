#!/bin/bash
rm -f faces_system_with_appendix.pdf 
rm -f faces_system_no_appendix.pdf 
rm -f faces_system.pdf 

# Good layout, no appendix
ln -sf appendix_dummy.tex appendix.tex
latexmk -pdf faces_system.tex
mv faces_system.pdf faces_system_no_appendix.pdf

## Split out appendix
#pdfsam-console -f ./faces_system_no_appendix.pdf -f ./appendix_main.pdf -o ./faces_system.pdf concat
#pdfsam-console -f faces_system_with_appendix.pdf -n 14 -s SPLIT -o . -p split_ split
#rm 1_split_faces_system_with_appendix.pdf
#mv 15_split_faces_system_with_appendix.pdf appendix.pdf

# Just appendix
latexmk -pdf appendix_main.tex

# Merge with good layout version
pdfsam-console -f ./faces_system_no_appendix.pdf -f ./appendix_main.pdf -o ./faces_system.pdf concat

# Publish
#scp faces_system.pdf percept@cpanel.cs.illinois.edu:public_html/Hidden/drew/faces_system.pdf

#latexmk -pdf supplementary_material.tex
#latexmk -pdf rebuttal.tex

#latexdiff faces_system_v4.tex faces_system.tex > diff.tex
#latexmk -pdf diff.tex
#= \arg \min_{\x, \e} 
