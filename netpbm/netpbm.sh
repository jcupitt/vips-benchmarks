#!/bin/bash

# need to sniff the file format for netpbm
fmt=$(file $1)

if echo $fmt | grep -i tif > /dev/null; then
	in=tifftopnm
	out=pnmtotiff
elif echo $fmt | grep -i jpe > /dev/null; then
	in=jpegtopnm
	out=pnmtojpeg
else 
	echo unknown file type
	exit 1
fi

cat > mask <<EOF
P2
3 3
32
14 14 14 
14 48 14
14 14 14
EOF

$in 2>/dev/null $1 | \
	pnmcut -left 100 -right -100 -top 100 -bottom -100 | \
	pnmscale 0.9 | \
	pnmconvol mask | \
	$out 2>/dev/null > $2

rm mask
