export GROFF_FONT_PATH=${PWD}/groff-SouceSansPro

SRCS=$(shell find -type f -name '*.ms' )
TARGET := $(addsuffix .pdf,$(basename $(SRCS)))

#.SUFFIXES:
.SUFFIXES: .ms .pdf

all: clean ${TARGET}

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

# %.pdf:	%.dvi
# 	dvipdf $< > $@

# %.dvi:	%.ms
# 	groff -mspdf -e -K utf8 -T dvi $< > $@

%.html:	%.ms
	groff -mspdf -e -K utf8 -T html $< > $@

# %.ps:	%.ms
# 	groff -ms -e -K utf8 -T ps $< > $@

.PHONY: clean all
