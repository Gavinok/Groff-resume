# export GROFF_FONT_PATH :=${PWD}/font

all: coaching_resume.pdf programming_resume.pdf cover.pdf
# all: coaching_resume.ps programming_resume.ps cover.ps

clean:
	rm -f *.ps *.pdf tmp.ms

%.pdf:	%.ms
	groff -mspdf -e -K utf8 -T pdf $< > $@

# %.ps:	%.ms
# 	groff -ms -e -K utf8 -T ps $< > $@

.PHONY: clean
