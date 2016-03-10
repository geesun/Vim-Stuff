#!/bin/bash 
find -L . -name "*.h" | xargs dirname  |uniq |sed "s/\.\//\'-I\','/g" |sed "s/$/\',/g"
