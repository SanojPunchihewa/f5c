#!/bin/bash

die() {
    local msg="${1}"
    echo "run.sh: ${msg}" >&2
    exit 1
}

test -d test || mkdir test || exit 1
cd test || exit 1
test -d chr22_meth_example && die "test/chr22_meth_example already exists." 
test -e f5c_na12878_test.tgz && rm f5c_na12878_test.tgz
wget -O f5c_na12878_test.tgz "https://ndownloader.figshare.com/files/13327931?private_link=5dd2077f1041412a9518" || exit 1
echo "Extracting. Please wait for a few minutes."
tar xf f5c_na12878_test.tgz || exit 1
rm f5c_na12878_test.tgz
exit 0