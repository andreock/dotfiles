#!/bin/sh

find . -name "*.pdf" -exec pdfinfo {} \; | grep "Pages:" | awk '{sum += $2} END {print "Total pages:", sum}'
