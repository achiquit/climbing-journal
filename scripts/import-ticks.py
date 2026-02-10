import sqlite3
from sqlite3 import Cursor
import csv

def get_grades(cur: Cursor) -> list:
    res = cur.execute("SELECT grade FROM grades;")
    db_grades = res.fetchall()
    grades = []
    for grade in db_grades:
        grades.append(grade[0])
    return grades

def imp_date(mp_tick: list, db_tick: list) -> list:
    db_tick.append(mp_tick[0])
    return db_tick

def imp_climb(mp_tick: list, db_tick: list, cur: Cursor, grades: list) -> list:
    # new_climb = [mp_tick[1], mp_tick[2], mp_tick[6], mp_tick[11]]
    new_climb = mp_tick[2]
    new_climb_grade = []
    print(new_climb)

    print
    
    for grade in grades:
        if new_climb.find(grade) > -1:
            new_climb_grade.append(grade)
    return(db_tick)

with open('ticks-small.csv', 'r') as mp_ticks:
    con = sqlite3.connect("ticks")
    cur = con.cursor()

    import_ticks = []

    grades = get_grades(cur)

    # Return a reader object which will
    # iterate over lines in the given csvfile
    csv_reader = csv.reader(mp_ticks)

    # convert string to list
    ticks_list = list(csv_reader)

    header = True
    for mp_tick in ticks_list:
        if header is True:
            header = False
        else:
            db_tick = []

            db_tick = imp_date(mp_tick, db_tick)

            db_tick = imp_climb(mp_tick, db_tick, cur, grades)

            db_tick = tuple(db_tick)
            import_ticks.append(db_tick)
    print(import_ticks[0])
    print(". . .")
    print(import_ticks[(len(import_ticks) - 1)])