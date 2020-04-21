export GROFF_FONT_PATH=${PWD}/groff-SouceSansPro

all: coaching_resume.pdf programming_resume.pdf coaching_cover.pdf

# all: coaching_resume.ps programming_resume.ps cover.ps

clean:
	rm -f *.ps *.pdf tmp.ms


# mspdf means use ms format with pdf extensions
# -K 		convert unicode
# -e 		enq preprocessor
# utf8 		encoding
# -T pdf 	sets the dev type to pdf
%.pdf:	%.ms
	groff -mspdf -e -K utf8 -T pdf $< > $@

%.html:	%.ms
	groff -mspdf -e -K utf8 -T html $< > $@

# %.ps:	%.ms
# 	groff -ms -e -K utf8 -T ps $< > $@

.PHONY: clean
