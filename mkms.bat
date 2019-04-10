if -%2-==-- (
	pdflatex -job-name=%1 -aux-directory=temp %1 & start %1.pdf
) else (
	pdflatex -job-name=%1 -aux-directory=temp %1
        copy .\*.bib .\temp\ 
        cd temp 
	bibtex %1.aux 
	cd .. 
	pdflatex -job-name=%1 -aux-directory=temp %1
	pdflatex -job-name=%1 -aux-directory=temp %1 & start %1.pdf
)
