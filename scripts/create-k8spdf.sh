#!/bin/bash

pushd .. || exit
jekyll build --config config-k8spdf.yml

pushd _site/k8s || exit
# find . -name '*.png' -exec mogrify -resize 50% {} +
if [ -f MyBook.epub ]; then
    rm MyBook.epub
fi
echo -n "application/epub+zip" > mimetype
zip -0Xq "MyBookPDF.epub" "mimetype"
zip -Xr9Dq "MyBookPDF.epub" * -x "mimetype" -x "scripts/*" -x README.md -x Kubernetescover.tiff -x Kubernetescover.png
popd || exit
popd || exit