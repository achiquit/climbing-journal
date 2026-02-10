#!/bin/sh

# Imports MP ticks from ticks.csv

./setup.sh
echo "Set up empty DB!"

python3 scripts/import-ticks.py