#!/bin/bash

rm -rf output
mkdir output

for in in input/*.ttf; do
	# retirer input/
    out=${in:6}
	out=output/$out
	# retirer .ttf
    out=${out::-4}
    mkdir "$out"
    npm run build-glyphs "$in" "$out"
done
