</sys/doc/fonts

all:V:	resumé.ps resumé.pdf

view:	resumé.pdf
	page -R resumé.pdf

clean:
	rm *.ps
	rm *.pdf

%.ps:D:	%.ms
	mac=(-ms)
	if(~ $stem comp utf 9 contents) mac=(-ms -mnihongo)
	{ echo $FONTS; cat $stem.ms } | pic | tbl | eqn | 
		troff $mac | lp -dstdout > $target
	/sys/doc/cleanps $target
	cleanpage $target

%.preview:D:	%.ms
	mac=(-ms)
	if(~ $stem comp utf 9 contents) mac=(-ms -mnihongo)
	{ echo $FONTS; cat $stem.ms } | pic | tbl | eqn | 
		troff -a $mac

%.pdf:D: %.ps
	ps2pdf $stem.ps $target
