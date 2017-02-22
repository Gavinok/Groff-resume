</sys/doc/fonts

all:V:	resume.ps resume.pdf

clean:
	rm -f *.ps *.pdf

%.ps:D:	%.ms
	eqn $stem.ms | troff -ms | lp -dstdout > $target
	/sys/doc/cleanps $target

%.pdf:D: %.ps
	ps2pdf $stem.ps $target
