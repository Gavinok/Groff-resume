.defcolor special rgb 0.1 0.1 0.9

.de special
.gcolor special
..

.de style
.fam Carlito
..

.\" used to customize style of title
.de tit
.ce 3
.ps 24
.special
\\$1
.reg
.sp .4
.ps 12
.I "\\$2"
.br
\\$3
..

.\" sections of resume
.de sec
.special 
.ps 16
.style
..

.\" normal font
.de reg
.gcolor black
.ps 13
.style
..

.\" smaller font
.de small
.ps 12
.style
..


.\" bullet entery
.de bul
.IP \(bu 2
.small
.fam Carlito
..

.\" subsection used in Experiance and Projects
.de ssec
.reg
.B "\\$1" " \\$2"
.br
..

.\" description of a ssec
.de desc
.small
.I "\\$1"
..

.\" used in Awards
.de awd
\\$1
.B "\\$2",
\\$3
..

.\" references macro
.de ref
.reg
.B "\\$1"
.reg
.\" produce a reference where 
.\" W for web
.\" -D for desctiption
.\" -- end of oprions
.pdfhref W -D mailto:\\$2 \
-- "\\$2"
\\$3
.br
.small
\\$4
.reg
..

.style
