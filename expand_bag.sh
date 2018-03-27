#!/usr/bin/bash
for fullfile in *.bag; do
    filename=$(basename "$fullfile")
    extension="${filename##*.}"
    filename="${filename%.*}"
    mkdir $filename
    cd $filename
    echo 'Current dir:'
    echo `pwd`
    for topic in `rostopic list -b ../$fullfile` ; do rostopic echo -p -b ../$fullfile $topic > ${topic//\//_}.csv ; done
    cd ..
done
