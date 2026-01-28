.headers ON
.mode csv

.output journal/data/all-ticks.csv
.read scripts/all-ticks.sql

.output journal/data/all-time-stats.csv
.read scripts/stats-over-time.sql

.output journal/data/partner-leaderboard.csv
.read scripts/leaderboard.sql

.output journal/data/climb-locs.csv
.read scripts/climbs-map.sql

.output journal/data/monthly-height.csv
.read scripts/monthly-histogram.sql

.output journal/data/yearly-height.csv
.read scripts/yearly-height.sql

.output journal/data/top-climbs.csv
.read scripts/top-climbs.sql

.output journal/data/ticks-by-grade.csv
.read scripts/ticks-by-grade.sql