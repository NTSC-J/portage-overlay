# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# adapted sys-boot/mkbootimg-rockchip from mrueg overlay

EAPI=6

inherit git-r3

DESCRIPTION="Tools to create firmware / boot images for Rockchip devices"
HOMEPAGE="https://github.com/neo-technologies/rockchip-mkbootimg"

EGIT_REPO_URI="git://github.com/neo-technologies/rockchip-mkbootimg.git"

LICENSE="Apache-2.0 BSD all-rights-reserved"
SLOT="0"
IUSE="libressl"
KEYWORDS=""

DEPEND="!libressl? ( dev-libs/openssl:0= )
		libressl? ( dev-libs/libressl:0= )"
RDEPEND="${DEPEND}"

src_prepare() {
	sed -i -e 's/LDFLAGS ?=/LDFLAGS = ${USER_LDFLAGS} /' Makefile || die
	eapply_user
}
src_compile() {
	emake CC="$(tc-getCC)" CFLAGS="${CFLAGS}" USER_LDFLAGS="${LDFLAGS}"
}
src_install() {
	# File collision with vanilla Android tools
	newbin mkbootimg mkbootimg-rockchip
	newbin afptool afptool-rockchip
	newbin unmkbootimg unmkbootimg-rockchip
	newbin mkrootfs mkrootfs-rockchip
	newbin mkcpiogz mkcpiogz-rockchip
	newbin unmkcpiogz unmkcpiogz-rockchip
	newbin img_maker img_maker-rockchip
}
