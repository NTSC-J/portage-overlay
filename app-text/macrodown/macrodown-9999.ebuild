# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit git-r3

DESCRIPTION="A markup language wrapping other markup languages such as TeX/LaTeX or HTML"
HOMEPAGE="https://github.com/gfngfn/Macrodown"

EGIT_REPO_URI="git://github.com/gfngfn/Macrodown.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm"
IUSE=""

DEPEND="dev-lang/ocaml[ocamlopt]"
RDEPEND="${DEPEND}"

src_install() {
	dobin bin/macrodown
	dodoc -r doc/* samples
}
