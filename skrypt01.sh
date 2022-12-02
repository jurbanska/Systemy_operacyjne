#!/bin/bash

path=$1
size=$2
find $path -maxdepth 15 -type f -size +$2 -print0 -mtime=10 | xargs -0 ls -Shl | head --lines=2
