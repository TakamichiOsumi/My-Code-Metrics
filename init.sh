#!/bin/bash

echo "Execute 'git submodule init'"
git submodule init

echo "Execute 'git submodule update'"
git submodule update

echo "Downloaded unique parts of each repository, without any submodules redundancy."
