#!/bin/bash

SEARCH='move'

curl "http://localhost:4741/services?search=${SEARCH}" \
  --include \
  --request GET \

echo
