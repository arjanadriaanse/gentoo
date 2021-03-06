# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python3_6 python3_7 python3_8 )

inherit distutils-r1

DESCRIPTION="BERT Serialization Library"
HOMEPAGE="https://pypi.org/project/bert/"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE=""

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/basho-erlastic[${PYTHON_USEDEP}]"

RDEPEND=""

PATCHES=( "${FILESDIR}/${PN}-2.0.0-remove-basestring-fix.patch" )
