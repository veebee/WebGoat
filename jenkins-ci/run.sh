#!/bin/bash

echo "About to detect secrets"
detect-secrets scan /data | tee /data/report.json
