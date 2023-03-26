#!/bin/sh

# Expected JSON data
expected_data='{
  "name": "Bruce wayne",
  "habilities": "Worlds great detective, rich, handsome",
  "weakness": "any dark ally, catwoman"
}'

# Make a GET request and store the response
response=$(curl -s http://localhost:3000/batman)

# Remove whitespace and newlines from the expected data and response
expected_data_stripped=$(echo "$expected_data" | tr -d '[:space:]')
response_stripped=$(echo "$response" | tr -d '[:space:]')

# Check if the stripped response matches the stripped expected data
if [ "$response_stripped" = "$expected_data_stripped" ]; then
    echo "Response matches the expected data. Displaying JSON:"
    echo "$response"
else
    echo "Error: Response does not match the expected data."
    echo "Expected:"
    echo "$expected_data"
    echo "Received:"
    echo "$response"
    exit 1
fi
