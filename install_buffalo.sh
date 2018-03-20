#!/bin/bash

BUFFALO_TARBALL="buffalo_0.10.3_linux_amd64.tar.gz"
tar -xzf ${BUFFALO_TARBALL}
mv buffalo-no-sqlite /usr/local/bin/buffalo
rm -rf ${BUFFALO_TARBALL}
