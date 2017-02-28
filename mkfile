</sys/doc/fonts

NPROC=1

all:V:	resume.pdf cover.pdf

clean:
	rm -f *.ps *.pdf

%.ps:D:	%.ms
	{ echo $FONTS; cat $stem.ms } | eqn |
		troff -ms | lp -dstdout > $target
	/sys/doc/cleanps $target

%.pdf:D: %.ps
	ps2pdf $stem.ps $target
