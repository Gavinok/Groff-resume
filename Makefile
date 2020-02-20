all: coaching_resume.pdf programming_resume.pdf cover.pdf

clean:
	rm -f *.ps *.pdf tmp.ms

%.pdf:	%.ms
	groff -ms -e -K utf8 -T pdf $< > $@

.PHONY: clean
