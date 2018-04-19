#!/bin/bash

curl "http://localhost:4741/search/${SEARCH}" \
  --include \
  --request GET \

echo
