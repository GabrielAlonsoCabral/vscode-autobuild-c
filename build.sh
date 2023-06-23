#!/bin/bash

build_cpp_files() {
    local current_dir="$1"

   if [[ ! -d "$current_dir" ]]; then
        return
    fi

    cd "$current_dir" || return

    for file in *.cpp; do
        if [[ -f "$file" ]]; then

            filename="${file%.*}"

            g++ "$file" -o "$filename"

            if [[ $? -eq 0 ]]; then
                echo "Built $file"
            else
                echo "Error building $file"
            fi
        fi
    done

    for subdir in */; do
        build_cpp_files "$current_dir/$subdir"
    done
}

current_directory="$(pwd)"

build_cpp_files "$current_directory"
