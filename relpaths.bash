#!/bin/bash

function relpaths() {
# Target file, e.g. css/site.css
# Current, e.g. lesson1/part2/index.html
    D=$(dirname $2)
    R="$1"
    echo "Start R: $R, D: $D"
    while [ "$D" != "" ] && [ "$D" != "." ]; do
        R="../$R"
        D=$(dirname $D)
        echo "rel: $R, d: $D"
    done
    echo "Final: $R"
}

echo "Testing relpaths"
relpaths "css/sites.css" "lesson1/part2/index.html" 
relpaths "css/sites.css" "CODATA-RDA/lesson-01.html"
relpaths "css/sites.css" "index.html"

