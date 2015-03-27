all: pt en
en: en/PauloCosta.pdf
pt: pt/PauloCosta.pdf

en/PauloCosta.pdf: en/PauloCosta.tex
	cd en; pdflatex PauloCosta < /dev/null
	rm en/*.log en/*.aux

pt/PauloCosta.pdf: pt/PauloCosta.tex
	cd pt; pdflatex PauloCosta < /dev/null
	rm pt/*.log pt/*.aux

clean:
	hg clean --all