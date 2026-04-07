.PHONY: all pdf clean

MARKDOWN_FILES = readme.md isu_courses.md
PDF_FILES = $(MARKDOWN_FILES:.md=.pdf)

all: pdf

pdf: $(PDF_FILES)

%.pdf: %.md
	npx --yes md-to-pdf --css "body, .markdown-body, .markdown-body p, .markdown-body h1, .markdown-body h2, .markdown-body h3, .markdown-body li { max-width: none !important; font-size: 16px !important; color: #000000 !important; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif !important; }" --pdf-options '{ "margin": {"top": "15mm", "right": "15mm", "bottom": "15mm", "left": "15mm"} }' $<

clean:
	rm -f $(PDF_FILES)
