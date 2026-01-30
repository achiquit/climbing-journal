#!/bin/sh

# Initial setup. DO NOT RUN THIS AFTER YOU'VE ENTERED DATA INTO YOUR DATABASE

echo "Setting up an anonymized database from my entire climbing history. Welcome! :D"

cat scripts/initial-setup-dummy.sql | sqlite3 ticks

echo "Updating CSVs"
cat scripts/send-to-csv.sql | sqlite3 ticks

echo "Everything is set up! Play around with the data in SQLite or check out the journal! (check out the ReadMe for help viewing the journal)"