.headers ON
.mode csv

.output my-climbing-journal/data/all-ticks.csv
.read scripts/all-ticks.sql

.output my-climbing-journal/data/all-time-stats.csv
.read scripts/stats-over-time.sql

.output my-climbing-journal/data/partner-leaderboard.csv
.read scripts/leaderboard.sql

.output my-climbing-journal/data/climb-locs.csv
.read scripts/climbs-map.sql

.output my-climbing-journal/data/monthly-height.csv
.read scripts/monthly-histogram.sql

.output my-climbing-journal/data/yearly-height.csv
.read scripts/yearly-height.sql

.output my-climbing-journal/data/top-climbs.csv
.read scripts/top-climbs.sql

.output my-climbing-journal/data/ticks-by-grade.csv
.read scripts/ticks-by-grade.sql