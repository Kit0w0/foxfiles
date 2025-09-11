#! /usr/bash/bin
WEEK_DAY=$(date +"%u")
HOUR=$(date +"%H")
MIN=$(date +"%M")
: '
CLASS 1: Computer Problem Solving
Monday, Wednesday: 12:40-2:05

CLASS 2: Electrical Engineering Lab Intro
Monday: 2:30-5:15

CLASS 3: Engineering Problem Solving
Tuesday, Thursday: 9:40-11:05

CLASS 4: Engineering Problem Solving Lab
Wednesday: 2:40-5:15

CLASS 5: English Composition
Tuesday, Thursday: 11:20-12:45

CLASS 6: Pre-Calculus
Tuesday, Thursday: 1:00-2:25
Friday: 1:50-2:45

'

calculate_total () {
 $TOTAL=$(echo "$1 * 60 + $2" | bc) 
}
calculate_rem () {
 $REM=$(echo "$TOTAL - $1 * 60 + $2" | bc)
}
CLASS_1="COMP 1800"
CLASS_1_START_HOUR=12
CLASS_1_START_MIN=40

CLASS_2=""
CLASS_2_START_HOUR=14
CLASS_2_START_MIN=30

CLASS_3=""
CLASS_3_START_HOUR=9
CLASS_3_START_MIN=40

CLASS_4_START_HOUR=14
CLASS_4_START_MIN=40

CLASS_5_START_HOUR=11
CLASS_5_START_MIN=20

CLASS_6_START_HOUR1=13
CLASS_6_START_MIN1=00
CLASS_6_START_HOUR2=13
CLASS_6_START_MIN2=50



CLASS_1_END_HOUR=14
CLASS_1_END_MIN=05

CLASS_2_END_HOUR=17
CLASS_2_END_MIN=15

CLASS_3_END_HOUR=11
CLASS_3_END_MIN=05

CLASS_4_END_HOUR=17
CLASS_4_END_MIN=15

CLASS_5_END_HOUR=12
CLASS_5_END_MIN=45

CLASS_6_END_HOUR1=14
CLASS_6_END_MIN1=25
CLASS_6_END_HOUR2=14
CLASS_6_END_MIN2=25

calculate_total "$HOUR" "$MIN"

if [ $WEEK_DAY == 1 ] #mon
if [ $HOUR -lt $CLASS_1_START_HOUR && $MIN -lt $CLASS_1_START_MIN ] 
calculate_rem "$CLASS_1_START_HOUR" "$CLASS_1_START_MINUTE"
echo NXT: COMP 1800 in $REM
else if [ $HOUR -gt $CLASS_1_END_HOUR && $MIN -gt $CLASS_1_END_MIN ]
calculate_rem


else if [ $WEEK_DAY == 2 ] #tue
else if [ $WEEK_DAY == 3 ] #wed
else if [ $WEEK_DAY == 4 ] #thr
else if [ $WEEK_DAY == 5 ] #fri
else if [ $WEEK_DAY == 6 ] #sat
else 
fi

