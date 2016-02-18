#!/usr/bin/env sh

test_installed () {
	! ${1} > /dev/null 2>&1
}


if test_installed "hg version"; then
	echo "please install mercurial"
	exit 0
fi

if test_installed "git version"; then
	echo "please install git"
	exit 0
fi

git clone git://repo.or.cz/fast-export.git
hg clone http://die-offenbachs.homelinux.org:48888/hg/eric erig.hg
(cd eric.git && git init)