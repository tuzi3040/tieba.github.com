#/usr/bin/env bash

set -e

cd "$(dirname "${BASH_SOURCE[0]}")"

hash python3

python3 ./common/gen.py <./cpl/content.json >./cpl/index.html
python3 ./common/gen.py --mobile <./cpl/content.json >./cpl/mobile.html
python3 ./common/gen.py <./cpp/content.json >./cpp/index.html
python3 ./common/gen.py --mobile <./cpp/content.json >./cpp/mobile.html

