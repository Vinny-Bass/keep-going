#!/bin/bash

# set the endpoint URL
url=http://localhost:3000/user

# define the JSON data to send
json='{"name": "Clark Kent", "occupation": "journalist", "age": 46, "friends": ["Bruce Wayne", "Barry Allen", "Louis Lane"]}'

# make a POST request with the JSON data
response=$(curl --silent --show-error --fail --request POST --header "Content-Type: application/json" --data "$json" "$url")

# check if the POST request was successful
if [ $? -eq 0 ]; then
  # parse the JSON response to get the id field
  id=$(echo "$response" | jq -r '.id')
  if [ "$id" != "null" ]; then
    # make a GET request with the same endpoint URL and the id field
    response=$(curl --silent --show-error --fail --request GET --header "Content-Type: application/json" --data "{\"id\": \"$id\"}" "$url")
    # check if the GET request was successful
    if [ $? -eq 0 ]; then
      # parse the JSON response to verify its contents
      name=$(echo "$response" | jq -r '.name')
      occupation=$(echo "$response" | jq -r '.occupation')
      age=$(echo "$response" | jq -r '.age')
      friends=$(echo "$response" | jq -r '.friends')
      if [ "$name" == "Clark Kent" ] && [ "$occupation" == "journalist" ] && [ "$age" == "46" ] && [ "$friends" == '["Bruce Wayne","Barry Allen","Louis Lane"]' ]; then
        echo "GET request succeeded and returned the expected data with id=$id"
      else
        echo "GET request succeeded but returned unexpected data:"
        echo "$response"
      fi
    else
      echo "GET request failed"
    fi
  else
    echo "POST request succeeded but returned no id field:"
    echo "$response"
  fi
else
  echo "POST request failed"
fi

# make a POST request with invalid JSON data (age is a string)
invalid_json='{"name": "Clark Kent", "occupation": "journalist", "age": "46", "friends": ["Bruce Wayne", "Barry Allen", "Louis Lane"]}'
response=$(curl --silent --show-error --fail --request POST --header "Content-Type: application/json" --data "$invalid_json" "$url")
# check if the POST request failed as expected
if [ $? -ne 0 ]; then
  echo "Invalid POST request failed as expected"
else
  echo "Invalid POST request succeeded unexpectedly:"
  echo "$response"
fi

# make a POST request with invalid JSON data (friends is a string instead of an array)
invalid_json='{"name": "Clark Kent", "occupation": "journalist", "age": 46, "friends": "Bruce Wayne, Barry Allen, Louis Lane"}'
response=$(curl --silent --show-error --fail --request POST --header "Content-Type: application/json" --data "$invalid_json" "$url")
# check if the POST request failed as expected
if [ $? -ne 0 ]; then
  echo "Invalid POST request failed as expected"
else
  echo "Invalid POST request succeeded unexpectedly:"
  echo "$response"
fi
