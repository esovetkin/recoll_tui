#!/bin/env gawk -f

BEGIN { FS="\t" }

function basename(file)
{
  sub(".*/", "", file)
  return file      
}

{
  print "Type: "$1
  print "File: "basename($2)"\t"$2
  print "Name: "$3
  print "Size: "$4" "$5
}

