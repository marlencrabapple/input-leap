#!/usr/bin/env bash

[[ $BARRIER_MACOS_SIGNBUNDLE -eq 1 ]] && [[ -n "$BARRIER_CODESIGNID" ]] \
   && codesign --verbose -s "$BARRIER_CODESIGNID" -f --deep \
    build/{bin/*,bundle/Barrier{.app,*.dmg,}}

