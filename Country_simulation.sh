#!/bin/bash

while read line
do
echo $line > output.txt

/opt/confluent/confluent-4.0.0/bin/kafka-console-producer --broker-list server_01:9092, server_02:9092, server_03:9092  --topic country-stream  < /home/country/output.txt >/dev/null

echo "Before Sleep Time"
sleep 1
echo "After Sleep sleep"

done<country_file.txt
