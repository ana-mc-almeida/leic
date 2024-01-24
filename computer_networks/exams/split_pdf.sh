#!/usr/bin/env bash

# RC's Exam PDFs usually have 2 paper pages by PDF page.
# This script splits each page into two, restoring a
# 1:1 ratio of pages.
#
# Requires ghostscript and pdftk

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <path to PDF>"
    exit 1
fi

tmpdir=$(mktemp -d)

gs \
    -o $tmpdir/out%03d_A.pdf \
    -sDEVICE=pdfwrite \
    -g4210x5950 \
    -c "<</PageOffset [0 0]>> setpagedevice" \
    -f $1

gs \
    -o $tmpdir/out%03d_B.pdf \
    -sDEVICE=pdfwrite \
    -g4210x5950 \
    -c "<</PageOffset [-421 0]>> setpagedevice" \
    -f $1

outfile="${1%.*}_split.pdf"

pdftk $tmpdir/out*_?.pdf cat output "$outfile"

rm -rf $tmpdir
