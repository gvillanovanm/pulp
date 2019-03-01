DOC = book

compile:
	@for i in 1 2; do \
	pdflatex -interaction=nonstopmode $(DOC).tex &> $(DOC).log; \
	done; 

compile_error:
	pdflatex -interaction=nonstopmode $(DOC).tex

view:
	evince $(DOC).pdf &

clean:
	rm -rf *.toc
	rm -rf *.log
	rm -rf *.lof
	rm -rf *.lot
	rm -rf *.aux

