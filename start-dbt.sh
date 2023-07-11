#!/bin/bash

echo "Activate virtual env"
. venv/Scripts/activate

echo "Set Python encoding utf8"
export PYTHONIOENCODING=utf8
set PYTHONUTF8=1

. venv/Scripts/activate

echo "Set Python encoding utf8"
export PYTHONIOENCODING=utf8
set PYTHONUTF8=1

read -p "Connect Gcloud"
gcloud auth application-default login