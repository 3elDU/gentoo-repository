# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Game of Life simulation, right in your terminal."
HOMEPAGE="https://github.com/3elDU/game-of-life"
# SRC_URI="https://github.com/3elDU/snake/archive/refs/tags/v${PV}.tar.gz"
SRC_URI="https://github.com/3elDU/game-of-life/archive/refs/tags/v${PV}.tar.gz"

SLOT="0"
KEYWORDS="~amd64"

DEPEND="sys-libs/ncurses"
RDEPEND="${DEPEND}"
BDEPEND=""

S="${WORKDIR}/game-of-life-${PV}"

src_compile() {
	emake
}

src_install() {
	emake DESTDIR=${D} install
}
