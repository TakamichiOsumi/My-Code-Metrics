#!/bin/bash

echo "Execute 'git submodule init'"
git submodule init

echo "Execute 'git submodule update'"
git submodule update

echo "Now, only unique parts of each repository have been downloaded, without any submodules redundancy."
