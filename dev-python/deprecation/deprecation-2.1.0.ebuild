# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( pypy3 python3_{8..10} )

inherit distutils-r1

DESCRIPTION="A library to handle automated deprecations"
HOMEPAGE="https://deprecation.readthedocs.io/"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm ~arm64 ~hppa ~ia64 ppc ppc64 sparc x86"

RDEPEND="dev-python/packaging[${PYTHON_USEDEP}]"

PATCHES=(
	"${FILESDIR}/${P}-remove-dep-unittest2.patch"
)

distutils_enable_sphinx docs
distutils_enable_tests unittest
