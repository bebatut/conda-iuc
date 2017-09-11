#!/bin/bash

# Extracted from: https://github.com/ebi-pf-team/interproscan/wiki/HowToDownload

cd $PREFIX/bin/

# Obtaining the core InterProScan software
wget ftp://ftp.ebi.ac.uk/pub/software/unix/iprscan/5/5.25-64.0/interproscan-5.25-64.0-64-bit.tar.gz
wget ftp://ftp.ebi.ac.uk/pub/software/unix/iprscan/5/5.25-64.0/interproscan-5.25-64.0-64-bit.tar.gz.md5
md5sum -c interproscan-5.25-64.0-64-bit.tar.gz.md5
tar -pxvzf interproscan-5.25-64.0-64-bit.tar.gz
rm interproscan-5.25-64.0-64-bit.tar.gz
rm interproscan-5.25-64.0-64-bit.tar.gz.md5
mv interproscan-5.25-64.0/* .
rm -rf interproscan-5.25-64.0/
chmod +x interproscan.sh
interproscan.sh --help

# Installing Panther Models
cd data
wget ftp://ftp.ebi.ac.uk/pub/software/unix/iprscan/5/data/panther-data-11.1.tar.gz
wget ftp://ftp.ebi.ac.uk/pub/software/unix/iprscan/5/data/panther-data-11.1.tar.gz.md5
md5sum -c panther-data-11.1.tar.gz.md5
tar -pxvzf panther-data-11.1.tar.gz
rm panther-data-11.1.tar.gz


