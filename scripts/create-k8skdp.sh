#!/bin/bash

pushd .. || exit
jekyll build --config config-k8skdp.yml

pushd _site/k8s || exit

# Remove links in the book - this can't be printed anyway
cp book.html book2.html
perl -0777pe 's%<a[ \r\n]+href="[^"]*">(.*?)</a>%<u>$1</u>%sg' book2.html > book.html

# find . -name '*.png' -exec mogrify -resize 50% {} +
if [ -f MyBook.epub ]; then
    rm MyBook.epub
fi
echo -n "application/epub+zip" > mimetype
zip -0Xq "MyBookKDP.epub" "mimetype"
zip -Xr9Dq "MyBookKDP.epub" * -x "mimetype" -x "scripts/*" -x README.md -x Kubernetescover.tiff -x KubernetesPDFcover.png -x book2.html
popd || exit
popd || exit