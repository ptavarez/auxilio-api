#!/bin/bash

curl "http://localhost:4741/requests" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "request": {
      "service": "'"${SERVICE}"'"
    }
  }'

echo
