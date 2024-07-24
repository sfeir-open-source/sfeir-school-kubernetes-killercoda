#!/bin/bash
if [[ ! -e "/tmp/god" ]]; then
  kubectl get endpoints monolith -o jsonpath='{.subsets[0].addresses[0].ip}' | grep grep -E "[[:digit:]]{1,3}\.[[:digit:]]{1,3}\.[[:digit:]]{1,3}\.[[:digit:]]{1,3}"
fi
