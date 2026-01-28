# What Is This Thing?
This project was born in the spring of 2025 when I decided I wanted to be able to keep track of my climbing in the ways that were of most interest to me, and not simply the ways my Mountain Project profile afforded me. I also thought it would be a fun way to learn about SQLite and practice Python. Having never worked in tech, this was my first project with tangible value. 
I ended up with a neat SQLite database that I then used to create some interpretive graphs on my [personal website](https://andre.chiquit.ooo/climbing)! 
I've been pretty happy with it for some time, but there are some minor things I'd like to tweak when I have the time to fuss with them. In the meantime, I thought it would be lame to keep it all to myself, so I whipped up this adaptation so that other data nerds can benefit if they'd like! Enjoy :)

To help understand the schema of the database, I whipped up some ER diagrams!
To understand the general schema, open ticks-db.drawio in [Draw.IO](https://app.diagrams.net/)
To understand the foreign key structure, open ticks-db-diagram.ods (a Libre Office spreadsheet file)

# Prerequesites
## At Minimum:
- Python installed
- SQLite installed
- Familiarity working in the command line

## To Really Make it Your Own:
- Proficient with Python, SQLite, HTML, TailwindCSS
- Maybe a little bit of mind reading to decypher my amateur code

# DB Setup:
Simply run `./setup.sh` to initialize an empty database to start using it for yourself.
Alternatively, run `./setup-populated.sh` to initialize a database with some dummy data (mine) so you can explore!

# Updating the DB:
Run `./update.sh ` to add new ticks. It's set up to add ticks on a by the day basis, so you'd make notes on what you climbed throughout the day, then add them to the DB when you get home. If you go a few days without adding it to the DB, the script makes it convenient to continue adding data for different days.

# Viewing your data:
After updating your ticks or pulling in my dummy data, you've got a local webpage set up to check out your numbers. 
You'll need to cd into the journal directory, set up a [Python web server](https://pythonbasics.org/webserver/), then visit `http://localhost:8000/` on your browser. 
I won't get deep into how to set up the server here, as there are tons of guides out there for it, but simply opening index.html in the journal directory won't work!

I also left some fun little SQL scripts in the scripts folder. Some of them just don't translate well to leaving them alone to be automated on the journal page, or are works in progress for which I welcome collaboration! One of them also outputs the lat/long of all climbs with some basic information that can be easily imported into a Google Map :) 

# Areas for Improvement:
## Things I'm actively working on fixing
- Adjust type_func() in add_data.py to accommodate adding climbs that have multiple types

## Areas I'm not psyched on implementing myself
(because I'm personally not too fussed with it)
- Data by pitch. Like how tall each pitch was, whether I led or followed a given pitch, etc.

## Areas I might be psyched on implementing myself at some point
- A way to update the DB without manually executing the code in a SQLite shell in the event of a typo like a mispelled name
- Figuring out how to make a histogram that displays ticks by grade AND type (like on Mountain Project)
- Making the wrapped script update itself for every year with interactivity to choose which year is viewed
- Make a script to migrate Mountain Project ticks to the DB

# Final Notes:
Please remember, I'm entirely an amateur coder. I've never worked in the industry, so I've learned nearly everything on the fly. Therefore I don't know what I don't know, and those of you who are veteran coders may laugh at my code or become hampered by it's poor flow/structure.
I made this entirely for my own use and edification, but now that I feel just about done with it, I felt that it would be lame to just keep it to myself. That's what this github repo is for! :D

I welcome **constructive** criticism! :) 
