#!/bin/bash

pushd .. || exit
jekyll build --config config-k8skdp.yml

pushd _site/k8s || exit

# Remove links in the book - this can't be printed anyway
sed -i 's%<a href="[^"]*">%<u>%g' book.html
sed -i 's%</a>%</u>%g' book.html

# find . -name '*.png' -exec mogrify -resize 50% {} +
if [ -f MyBook.epub ]; then
    rm MyBook.epub
fi
echo -n "application/epub+zip" > mimetype
zip -0Xq "MyBookKDP.epub" "mimetype"
zip -Xr9Dq "MyBookKDP.epub" * -x "mimetype" -x "scripts/*" -x README.md -x Kubernetescover.tiff
popd || exit
popd || exit