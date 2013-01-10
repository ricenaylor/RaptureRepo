#!/bin/bash

for DIR in $(find ./repository -type d); do
    {
        echo -e "<html>\n<body>\n<h1>Directory Listing</h1>\n</hr/>\n<pre>"
        ls -1pa "${DIR}" | grep -v "^\./$" | grep -v "^index\.html$" | awk '{ printf "<a href=\"%s\">%s</a>\n",$1,$1 }'
        echo -e "</pre>\n</body>\n</html>"
    } > "${DIR}/index.html"
done

for DIR in $(find ./dist -type d); do
    {
        echo -e "<html>\n<body>\n<h1>Directory Listing</h1>\n</hr/>\n<pre>"
        ls -1pa "${DIR}" | grep -v "^\./$" | grep -v "^index\.html$" | awk '{ printf "<a href=\"%s\">%s</a>\n",$1,$1 }'
        echo -e "</pre>\n</body>\n</html>"
    } > "${DIR}/index.html"
done


for DIR in $(find ./release -type d); do
    {
        echo -e "<html>\n<body>\n<h1>Directory Listing</h1>\n</hr/>\n<pre>"
        ls -1pa "${DIR}" | grep -v "^\./$" | grep -v "^index\.html$" | awk '{ printf "<a href=\"%s\">%s</a>\n",$1,$1 }'
        echo -e "</pre>\n</body>\n</html>"
    } > "${DIR}/index.html"
done

