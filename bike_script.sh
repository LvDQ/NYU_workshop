
#!/bin/bash

wget https://witestlab.poly.edu/bikes/201601-citibike-tripdata.zip

unzip 201601-citibike-tripdata.zip

mv 201601-citibike-tripdata.csv  bike_data.csv

awk -F "\"*,\"*" '{print $5}' bike_data.csv > popular_station01.txt

awk -F "\"*,\"*" '{print $9}' bike_data.csv >> popular_station01.txt

sort popular_station.txt | uniq -c | sort -nr > final01.txt

