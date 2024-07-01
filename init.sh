#!/bin/bash

echo "Execute 'git submodule init'"
git submodule init

echo "Execute 'git submodule update'"
git submodule update

echo "Got all repositories without any submodule redundancy"
