#!/bin/bash

# creates files for checker
create_files() {
    ext=$1
    x=$2
    title=$3

    testfile="${x}-main.${ext}"
    utilfile="${x}-util.${ext}"
    projectfile="${x}-${title}.${ext}"

    touch ${testfile}
    touch ${projectfile}
    touch ${utilfile}

    echo "Created files: ${projectfile}, ${utilfile}, and ${testfile}"
}

# err check
if [ "$#" -ne 3 ]; then
  echo "Usage: $0 (ext) (x) title"
  exit 1
fi

# call it!
create_files "$1" "$2" "$3"
