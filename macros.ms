.defcolor special rgb 0.1 0.1 0.9

.de special
.gcolor special
..

.de style
.fam Carlito
..

.\" sections of resume
.de sec
.special 
.ps 15
.style
..

.\" normal font
.de reg
.gcolor black
.ps 12
.style
..

.\" smaller font
.de small
.ps 11
.style
..


.\" bullet entery
.de bul
.IP \(bu 2
.small
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
-- \\$2
\\$3
.br
.small
\\$4
.reg
..

.style
