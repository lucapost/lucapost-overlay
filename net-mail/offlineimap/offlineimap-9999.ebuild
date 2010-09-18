# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3
inherit xorg-2 distutils git

EGIT_REPO_URI="git://github.com/jgoerzen/offlineimap.git"

DESCRIPTION="Powerful IMAP/Maildir synchronization and reader support"
HOMEPAGE="http://software.complete.org/offlineimap"

LICENSE="GPL-2"
IUSE="ssl"
KEYWORDS="~amd64 ~x86"
SLOT="0"

SRC_URI=""

RDEPEND="dev-lang/python[threads]
	ssl? ( dev-lang/python[ssl] ) "

S="${WORKDIR}/${PN}"

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
