#!/bin/bash
if [[ ! -e "/tmp/god" ]]; then
  grep -i "k config get-contexts\|kubectl config get-contexts\|k config view\|kubectl config view" /tmp/res-step2
fi