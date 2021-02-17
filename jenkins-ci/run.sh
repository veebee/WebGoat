#!/bin/bash

detect-secrets scan /data > /data/reports/detect-secrets/report.json
echo "Done scanning, results are available in reports/detect-secrets/report.json"
