#!/bin/bash

source ./creds.sh

# Authenticate into CT
ACCESS_TOKEN=$(curl "${CTP_AUTH_URL}/oauth/token" -X POST \
    --basic --user "${CTP_CLIENT_ID}:${CTP_CLIENT_SECRET}" \
    -d "grant_type=client_credentials&scope=${CTP_SCOPES}" | jq .access_token -r)


# Fetch product types
curl -sH "Authorization: Bearer ${ACCESS_TOKEN}" "${CTP_API_URL}/${CTP_PROJECT_KEY}/product-types" \
    | jq ".results[]" \
    | jq "del(.id) | del(.version) | del(.versionModifiedAt)  | del(.createdAt)  | del(.lastModifiedAt)  | del(.lastModifiedBy)  | del(.createdBy)" \
    | jq "[.]" > product-types.json


# TODO: Convert JSON to HCL
cp ../../products.tf .
