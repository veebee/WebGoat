#!/bin/bash

<<<<<<< HEAD
echo "About to detect secrets"
detect-secrets scan /data | tee /data/report.json
=======
detect-secrets scan /data > /data/reports/detect-secrets/report.json
echo "Done scanning, results are available in reports/detect-secrets/report.json"
>>>>>>> f23cf6aeaba9b4355edce0ac5b77ed67ea04e368
