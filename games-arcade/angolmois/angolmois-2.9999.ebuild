# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit mercurial

DESCRIPTION="the simple BMS player"
HOMEPAGE="http://mearie.org/projects/angolmois/"

EHG_REPO_URI="https://bitbucket.org/lifthrasiir/angolmois"
EHG_REVISION="2.0"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND="media-libs/libsdl2
		media-libs/sdl2-image
		media-libs/sdl2-mixer
		media-libs/smpeg2"
RDEPEND="${DEPEND}"

src_install() {
	dobin angolmois
}
