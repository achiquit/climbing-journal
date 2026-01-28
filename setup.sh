#!/bin/sh

# Initial setup. DO NOT RUN THIS AFTER YOU'VE ENTERED DATA INTO YOUR DATABASE

echo "Setting up a fresh database. Welcome! :D"

cat scripts/initial-setup.sql | sqlite3 ticks

echo "Your database is ready to go! Run update.sh to add some ticks :)"