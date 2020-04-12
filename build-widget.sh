#!/bin/bash
if [[ $# -eq 0 ]]
then
   echo "Please provide directory and name of the widget."
   exit 1
fi

dir=$(dirname $1)
widget=$(basename $1)

if [[ -z $dir ]] || [[ $dir = "." ]]
then
   echo "Please provide widget directory."
   exit 1
fi

if [[ -z $widget ]]
then
   echo "Please provide widget name."
   exit 1
fi

if [ -f "$1.widget.html" ]
then
   cat $1.widget.html | awk '{gsub(/\"/,"\\\""); gsub(/\t/,"\\t"); printf "%s\\n", $0;}' | sed -e "/%%SETTINGS%%/ {" -e 'r $1.settings.json' -e 'd' -e '}' -e "s/%%HTML%%/$(</dev/stdin sed -e 's/[\&/]/\\&/g' | tr -d '\n')/" $1.template > "$dir/widget/$widget.widget.json"
   echo "Wrote widget to $dir/widget/$widget.widget.json"
else
   echo "Widget $1 does not exists."
   exit 1
fi
    
