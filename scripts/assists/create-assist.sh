#!/bin/bash

curl "http://localhost:4741/assists" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "assist": {
      "service_id": "'"${SERVICE_ID}"'"
    }
  }'

echo
