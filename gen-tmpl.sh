#!/bin/bash

CVENUM=$1
mkdir $CVENUM
cp tmpl.md $CVENUM/readme.md
sed -i "s/CVENUM/$CVENUM/g" $CVENUM/readme.md
echo "[*] Created $CVENUM directory "