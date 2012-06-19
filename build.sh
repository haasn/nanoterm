#!/bin/bash
GHC_WARNS="
-Wall
-fno-warn-name-shadowing
-fno-warn-orphans
-fno-warn-missing-signatures
-fno-warn-type-defaults
-fno-warn-unused-do-bind
"

GHC_OPTS="${GHC_WARNS} -hidir bin/obj -odir bin/obj"

mkdir -p bin/obj
rm -f -- bin/obj/Main.*
hlint nanoterm.hs
ghc ${GHC_OPTS} nanoterm.hs -o bin/nanoterm
