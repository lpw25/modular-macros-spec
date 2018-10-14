
OTTFLAGS=-tex_show_meta false -signal_parse_errors true

all : macros.pdf

macros.tex : macros.ott
	ott ${OTTFLAGS} -i macros.ott -o macros.tex

macros.pdf : macros.tex
	latexmk -pdf -pdflatex="pdflatex -interaction=nonstopmode" -use-make macros.tex

clean:
	latexmk -CA
	rm macros.tex
