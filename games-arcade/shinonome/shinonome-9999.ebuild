# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit games git-r3

DESCRIPTION="A console-based BMS player using ncurses."
HOMEPAGE="https://github.com/kuroclef/shinonome"

EGIT_REPO_URI="git://github.com/kuroclef/shinonome.git"

LICENSE="GPL-3"
SLOT="0"
IUSE=""
KEYWORDS="~alpha ~amd64 ~arm ~arm64 ~hppa ~ia64 ~m68k ~mips ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86"

DEPEND="sys-libs/ncurses
		media-libs/libsdl2
		media-libs/sdl2-mixer"
RDEPEND="${DEPEND}"

src_install() {
	dobin shinonome
}

