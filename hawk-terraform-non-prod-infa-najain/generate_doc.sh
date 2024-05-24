#!/bin/bash

function generate_doc(){
    name=$1
    dir=$2

    output="${dir}readme.md"
    
    echo "Removing existing doc for $name..."
    rm -f $output
    
    echo "Creating terraform doc for $name...."
    terraform-docs markdown table $dir >> $output
    echo "Output : $output"
    echo "done."
    echo "------------------------------------"
}


function generate_doc_all(){
    # cd modules
    # for dir in */; 
    # do 
    #   generate_doc $dir $dir
    # done

    cd ..
    generate_doc "main" ./
}


if [ ! -z "$1" ]
  then
    echo "$1"
    generate_doc "$1" "$1"
    
  else
    echo "all"
    generate_doc_all
fi
