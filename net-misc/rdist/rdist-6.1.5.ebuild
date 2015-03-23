# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4
# see http://devmanual.gentoo.org/ebuild-writing/eapi/

DESCRIPTION="Remote software distribution system"
HOMEPAGE="http://www.magnicomp.com/rdist/rdist.shtml"
SRC_URI="file:/usr/local/sources/rdist-${P}.tar.gz"

LICENSE="RDist"
SLOT="1"
KEYWORDS="x86 amd64"
IUSE=""

DEPEND="dev-util/yacc"
RDEPEND=""  # yacc only needed for compile

DESCRIPTION="Remote software distribution system"
SRC_URI="http://www.magnicomp.com/download/rdist/${P}.tar.gz"



src_compile() {
	emake || die "emake failed"
}

src_install() {
	dodir /usr/bin /usr/share/man/man{1,8}
	make install BIN_DIR=${D}/usr/bin || die "make install failed"
	make install.man \
		MAN_1_DIR=${D}/usr/share/man/man1 MAN_8_DIR=${D}/usr/share/man/man8 \
		|| die "make install.man failed"
}

