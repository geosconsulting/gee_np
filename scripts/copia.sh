#!/bin/bash
for file in stats/*.csv; do   
    #echo ${file##*/}
    filename=$(basename "$file")
	extension="${filename##*.}"
	filename_noext="${filename%.*}"	
	#echo $filename_noext
	server_date=$(echo $filename_noext | cut -d'_' -f 3)
	#echo $server_date
	year_rst=${server_date:0:4}
    #echo $year_rst
    dir="$year_rst"
    #echo $dir
    mkdir -p "stats/transpiration/$dir"
    cp "$file" "stats/transpiration/$dir"
done
