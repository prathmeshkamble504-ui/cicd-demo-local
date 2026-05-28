#!/bin/bash
set -e
cd /data/cicd-demo
git fetch origin
git checkout $1
git pull origin $1
python3 app.py
echo "Deploy complete!"