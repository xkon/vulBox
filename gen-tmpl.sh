#!/bin/bash

CVENUM=$1
mkdir $CVENUM
cp tmpl.md $CVENUM/readme.md
sed -i "s/CVENUM/$CVENUM/g" $CVENUM/readme.md

# images name can only consist of lowercase (a-z) characters
cvenum=`echo $CVENUM | tr 'A-Z' 'a-z'`
sed -i "s#xk0n/$CVENUM#xk0n/$cvenum#g" $CVENUM/readme.md
echo "[*] Created $CVENUM directory "
