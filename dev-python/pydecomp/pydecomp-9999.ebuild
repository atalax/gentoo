# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI="5"

PYTHON_COMPAT=(python{2_7,3_3,3_4})

EGIT_BRANCH="master"

inherit distutils-r1 python-r1 git-2

EGIT_REPO_URI="git://github.com/dol-sen/pyDeComp.git"

DESCRIPTION="A python interface library for common compression, decompression and contents handling"
HOMEPAGE="https://github.com/dol-sen/pyDeComp"
SRC_URI=""

LICENSE="BSD"
SLOT="0"
IUSE=""

KEYWORDS=""

DEPEND=""
RDEPEND="${DEPEND}
	"

python_install_all() {
	distutils-r1_python_install_all
}

pkg_postinst() {
	einfo
	einfo "This is experimental software."
	einfo "The API's it installs should be considered unstable"
	einfo "and are subject to change."
	einfo
	einfo "Please file any enhancement requests, or bugs"
	einfo "at https://github.com/dol-sen/pyDeComp/issues"
	einfo "I am also on IRC @ #gentoo-releng of the freenode network"
	einfo
	ewarn "There may be some python 3 compatibility issues still."
	ewarn "Please help debug/fix/report them in github or bugzilla."
}
