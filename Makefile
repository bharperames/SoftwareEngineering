.PHONY: all pdf clean

MARKDOWN_FILES = readme.md isu_courses.md
PDF_FILES = $(MARKDOWN_FILES:.md=.pdf)

all: pdf

pdf: $(PDF_FILES)

%.pdf: %.md
	npx --yes md-to-pdf $<

clean:
	rm -f $(PDF_FILES)
