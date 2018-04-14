#!/bin/bash

curl "http://localhost:4741/assists" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
