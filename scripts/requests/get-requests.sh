#!/bin/bash

curl "http://localhost:4741/requests" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
