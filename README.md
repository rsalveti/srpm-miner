## Synopsis

Queries a given RPM group, and retrieves a package list. Then fetches each SRPM for a given package.

## Motivation

A easy way to pull SRPMs for mass rebuilds.

## Installation

You need to setup a source repos before this script will function. Included is an example for Centos.

cp CentOS-Source.repo /etc/yum.repo.d/
yum update
yum install -y yum-utils

## Usage

./mine.sh [YUMGROUP]

Example:
./mine.sh base

## License

GPLv3
