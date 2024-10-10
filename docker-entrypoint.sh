#!/bin/bash

apifox run \
  --access-token "${APIFOX_ACCESS_TOKEN}" \
  -n "${APIFOX_ITERATION}" \
  -r "${APIFOX_REPORTERS}" \
  -t "${APIFOX_SCENARIO_ID}" \
  -e "${APIFOX_ENVIRONMENT}" 

