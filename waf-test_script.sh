#!/bin/bash

URLS=("http://18.253.73.98/vulnerabilities/brute/" "http://18.253.73.98/vulnerabilities/brute/" "http://18.253.73.98/vulnerabilities/brute/" "http://18.253.73.98/vulnerabilities/brute/" \
"http://18.253.73.98/vulnerabilities/brute/" "http://18.253.73.98/vulnerabilities/brute/" "http://18.253.73.98/vulnerabilities/brute/" "http://18.253.73.98/vulnerabilities/brute/" \
"http://18.253.73.98/vulnerabilities/brute/" "http://18.253.73.98/vulnerabilities/brute/" "http://18.253.73.98/vulnerabilities/brute/" "http://18.253.73.98/vulnerabilities/brute/" \
"http://18.253.73.98/vulnerabilities/brute/" "http://18.253.73.98/vulnerabilities/brute/" "http://18.253.73.98/vulnerabilities/brute/" "http://18.253.73.98/vulnerabilities/brute/" )

for URL in ${URLS[@]}; do
  python waf-test.py $URL
  wait_time=$(( $RANDOM % 240 + 1 ))
  sleep $wait_time
done

exit 0
