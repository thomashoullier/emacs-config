#!/bin/sh
if [ ! -f sbcl.core-for-slime ]; then
    sbcl --load generate-core.lisp
fi
