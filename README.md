## Synopsis

Queries a given RPM group, and retrieves a package list. Then fetches each SRPM for a given package.

## Motivation

A easy way to pull SRPMs for mass rebuilds.

## Installation

You need to setup a source repos before this script will function. Included is an example for Centos.

cp CentOS-Source.repo /etc/yum.repo.d/
yum update
yum install -y yum-utils

To be able to rebuild srpms you will need to run the following commands.

yum install -y rpm-build redhat-rpm-config gcc make
mkdir -p ~/rpmbuild/{BUILD,RPMS,SOURCES,SPECS,SRPMS}
echo '%_topdir %(echo $HOME)/rpmbuild' > ~/.rpmmacros

Then set your disttag in /etc/rpm/macros.dist

## Usage

./mine.sh [YUMGROUP]

Example:
./mine.sh base

./rebuild-srpm.sh [PATH/TO/SRPM]

Example:
./rebuild-srpm.sh base/plymouth-0.8.9-0.24.20140113.el7.centos.src.rpm

## License

GPLv3
