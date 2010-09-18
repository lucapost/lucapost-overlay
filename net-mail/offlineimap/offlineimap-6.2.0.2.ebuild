# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/net-mail/offlineimap/offlineimap-6.2.0.2.ebuild,v 1.2 2010/02/18 02:24:31 jer Exp $

EAPI=2

inherit eutils distutils

#S="${WORKDIR}/${PN}"
S="${WORKDIR}/${P}"
DESCRIPTION="Powerful IMAP/Maildir synchronization and reader support"
SRC_URI="mirror://debian/pool/main/o/offlineimap/${P/-/_}.tar.gz"
HOMEPAGE="http://software.complete.org/offlineimap"
LICENSE="GPL-2"
IUSE="ssl"
KEYWORDS="~alpha ~amd64 ~ia64 ~ppc ~x86 ~amd64-linux ~x86-linux ~ppc-macos ~x64-macos ~x86-macos"
SLOT="0"

DEPEND=""
RDEPEND="dev-lang/python[threads]
	ssl? ( dev-lang/python[ssl] ) "

src_prepare() {
	epatch "${FILESDIR}"/${P}-darwin10.patch
}

src_install() {
	distutils_src_install
	dodoc offlineimap.conf offlineimap.conf.minimal offlineimap.sgml
}

pkg_postinst() {
	elog ""
	elog "You will need to configure offlineimap by creating ~/.offlineimaprc"
	elog "Sample configurations are in /usr/share/doc/${PF}/"
	elog ""
}
