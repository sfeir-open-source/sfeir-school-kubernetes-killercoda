#!/bin/bash
if [[ ! -e "/tmp/god" ]]; then
  grep "kubectl apply -f" | /tmp/res-step2 && kubectl get po -lapp=frontend -o jsonpath='{.items[*].status.phase}' | grep -iv 'InvalidImageName\|ImagePullBackOff'
fi
