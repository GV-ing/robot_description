#!/bin/bash
cd "$(dirname "$0")"


# copy the source in temporary folder
rm -rf ./tmp_sources
mkdir -p ./tmp_sources
cp -r ../src/* ./tmp_sources

docker build -t robot_description -f ./Dockerfile .

rm -rf ./tmp_sources

echo "Build completato. Avvia il container con: ./docker_run_container.sh"