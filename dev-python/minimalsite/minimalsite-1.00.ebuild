# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

inherit distutils

S="${WORKDIR}/${P}"
DESCRIPTION="fast minimal static website builder."
HOMEPAGE="https://github.com/lavish/minimalsite"
SRC_URI="https://github.com/downloads/lavish/minimalsite/minimalsite-${PV}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="markdown textile"

DEPEND=""
RDEPEND="markdown? ( >=dev-python/markdown-2.1.1 )
	    textile? ( app-text/pytextile )"

src_install() {
	distutils_src_install
}
