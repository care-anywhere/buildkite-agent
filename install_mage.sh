#!/bin/bash

MAGE_TARBALL="mage_2.0.1_Linux-64bit.tar.gz"
tar -xzf ${MAGE_TARBALL}
mv mage /usr/local/bin/mage
rm -rf ${MAGE_TARBALL}
