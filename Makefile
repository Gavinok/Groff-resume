all:	resume.pdf cover.pdf

clean:
	rm -f *.pdf


%.pdf:	%.ms
	groff -ms -e -K utf8 -T pdf $< > $@
