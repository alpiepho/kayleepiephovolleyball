#!/usr/bin/env bash

flutter pub get
flutter pub global activate peanut
export PATH="$PATH":"$HOME/development/flutter/.pub-cache/bin"
flutter pub global run peanut

git stash
git checkout gh-pages

sed -e 's/href="\/"/href="https:\/\/alpiepho.github.io\/kayleepiephovolleyball\/"/' index.html  > /tmp/run_peanut.txt
mv /tmp/run_peanut.txt index.html

sed -e 's/  "\/",/  "https:\/\/alpiepho.github.io\/kayleepiephovolleyball\/",/' flutter_service_worker.js                                               > /tmp/run_peanut.txt
mv /tmp/run_peanut.txt flutter_service_worker.js
sed -e 's/"main.dart.js",/"https:\/\/alpiepho.github.io\/kayleepiephovolleyball\/main.dart.js",/' flutter_service_worker.js                             > /tmp/run_peanut.txt
mv /tmp/run_peanut.txt flutter_service_worker.js
sed -e 's/"index.html",/"https:\/\/alpiepho.github.io\/kayleepiephovolleyball\/index.html",/' flutter_service_worker.js                                 > /tmp/run_peanut.txt
mv /tmp/run_peanut.txt flutter_service_worker.js
sed -e 's/"assets\/NOTICES",/"https:\/\/alpiepho.github.io\/kayleepiephovolleyball\/assets\/NOTICES",/' flutter_service_worker.js                       > /tmp/run_peanut.txt
mv /tmp/run_peanut.txt flutter_service_worker.js
sed -e 's/"assets\/AssetManifest.json",/"https:\/\/alpiepho.github.io\/kayleepiephovolleyball\/assets\/AssetManifest.json",/' flutter_service_worker.js > /tmp/run_peanut.txt
mv /tmp/run_peanut.txt flutter_service_worker.js
sed -e 's/"assets\/FontManifest.json"]/"https:\/\/alpiepho.github.io\/kayleepiephovolleyball\/assets\/FontManifest.json"]/' flutter_service_worker.js   > /tmp/run_peanut.txt
mv /tmp/run_peanut.txt flutter_service_worker.js

git add index.html flutter_service_worker.js
git commit -m "update gh-pages paths"
git push

git checkout main
git stash pop
flutter pub get
