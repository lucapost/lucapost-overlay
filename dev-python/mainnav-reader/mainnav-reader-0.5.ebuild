# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

DESCRIPTION="This tiny tool reads out and deletes tracklog data from mainnav gps devices under linux."
HOMEPAGE="http://code.google.com/p/mainnav-reader/"
SRC_URI="http://${PN}.googlecode.com/files/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="dev-python/pyserial"
RDEPEND="${DEPEND}"
