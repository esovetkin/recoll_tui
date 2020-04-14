#!/bin/env gawk -f

BEGIN {
  FS="\t"
}

{
  $2 = gensub(/\[file:\/\/(.*)\]/,"\\1","g",$2)
  $3 = gensub(/\[(.*)\]/,"\\1","g",$3)
  print $1"\t"$2"\t"$3"\t"$4"\t"$5
}
