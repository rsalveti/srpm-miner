#!/bin/bash
yum-builddep -y $1
rpm -i $1
pkg=$(basename $1 | sed 's/-[0-9].*//')
rpmbuild -ba ~/rpmbuild/SPECS/$pkg.spec
cp ~/rpmbuild/SRPMS/$pkg* $(dirname $1)
rm $1
