.include <bsd.own.mk>

PREFIX?=	/usr/local
LIBDIR=		${PREFIX}/lib/pkg/plugins
SHLIB_DIR?=	${LIBDIR}/
SHLIB_NAME?=	${PLUGIN_NAME}.so

PLUGIN_NAME=	provides
SRCS=		provides.c

CFLAGS+= -I /usr/local/include
LDFLAGS+= -L /usr/lib -L /usr/local/lib -lfetch -lpcre

beforeinstall:
	${INSTALL} -d ${LIBDIR}

.include <bsd.lib.mk>