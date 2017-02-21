</sys/doc/fonts

all:V:	resume.ps resume.pdf

clean:
	rm -f *.ps *.pdf

%.ps:D:	%.ms
	mac=(-ms)
	if(~ $stem comp utf 9 contents) mac=(-ms -mnihongo)
	{ echo $FONTS; cat $stem.ms } | pic | tbl | eqn | 
		troff $mac | lp -dstdout > $target
	/sys/doc/cleanps $target

%.pdf:D: %.ps
	ps2pdf $stem.ps $target
