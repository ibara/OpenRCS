#	$OpenBSD: Makefile,v 1.41 2019/04/24 11:57:54 schwarze Exp $

PROG=	rcs
MAN=	ci.1 co.1 ident.1 merge.1 \
	rcs.1 rcsclean.1 rcsdiff.1 rcsmerge.1 rlog.1 \
	rcsfile.5

SRCS=	ci.c co.c ident.c merge.c rcsclean.c rcsdiff.c rcsmerge.c rcsparse.c \
	rcsprog.c rlog.c rcsutil.c buf.c date.y diff.c diff3.c rcs.c rcsnum.c \
	rcstime.c worklist.c xmalloc.c

LINKS=	${BINDIR}/rcs ${BINDIR}/ci ${BINDIR}/rcs ${BINDIR}/co \
	${BINDIR}/rcs ${BINDIR}/ident ${BINDIR}/rcs ${BINDIR}/merge \
	${BINDIR}/rcs ${BINDIR}/rcsclean ${BINDIR}/rcs ${BINDIR}/rcsdiff \
	${BINDIR}/rcs ${BINDIR}/rcsmerge ${BINDIR}/rcs ${BINDIR}/rlog

WARNS?=	2

CPPFLAGS+=-I${SRCTOP}/usr.bin/rcs
CFLAGS+=-D__dead=__dead2
CFLAGS+=-Wno-incompatible-pointer-types-discards-qualifiers
YFLAGS=

.include <bsd.prog.mk>
