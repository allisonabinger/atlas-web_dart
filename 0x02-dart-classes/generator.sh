#!/bin/bash

# creates files for checker
create_files() {
    ext=$1
    x=$2
    title=$3

    testfile="${x}-main.${ext}"
    projectfile="${x}-${title}.${ext}"

    touch ${testfile}
    touch ${projectfile}

    echo "Created files: ${projectfile} and ${testfile}"
}

# err check
if [ "$#" -ne 3 ]; then
  echo "Usage: $0 (ext) (x) title"
  exit 1
fi

create_files "$1" "$2" "$3"
