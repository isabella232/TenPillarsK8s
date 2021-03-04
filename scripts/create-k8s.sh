#!/bin/bash

pushd .. || exit
jekyll build --config config-k8s.yml

pushd _site/k8s || exit
find . -name '*.png' -exec mogrify -resize 50% {} +
rm MyBook.epub
echo "application/epub+zip" > mimetype
zip -Xr "MyBook.epub" "mimetype" *
popd || exit
popd || exit