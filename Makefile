export GROFF_FONT_PATH=${PWD}/groff-SouceSansPro

SRCS= *.ms
TARGET := $(addsuffix .pdf,$(basename $(wildcard $(SRCS))))

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
	groff -Tpdf -mspdf $< > $@

# %.pdf:	%.dvi
# 	dvipdf $< > $@

# %.dvi:	%.ms
# 	groff -mspdf -e -K utf8 -T dvi $< > $@

# %.pdf:	%.ps
# 	ps2pdf $< > $@

# %.ps:	%.ms
# 	groff -ms -e -K utf8 -T ps $< > $@

%.html:	%.ms
	groff -mspdf -K utf8 -T html $< > $@


.PHONY: clean all
