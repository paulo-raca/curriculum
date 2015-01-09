all: pt en
en: en/PauloCosta.pdf
pt: pt/PauloCosta.pdf

en/PauloCosta.pdf:
	cd en; pdflatex PauloCosta < /dev/null
	rm en/*.log en/*.aux

pt/PauloCosta.pdf:
	cd pt; pdflatex PauloCosta < /dev/null
	rm pt/*.log pt/*.aux

clean:
	rm -f pt/*.log pt/*.pdf en/*.log en/*.pdf