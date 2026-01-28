#!/bin/sh

# Prompts the user to update the database, then updates the interpretive CSVs

python3 scripts/add_data.py

echo "Updating your journal"
cat scripts/send-to-csv.sql | sqlite3 ticks
echo "Your journal is up to date! Go check out those sweet sweet numbahs!"