#!/bin/sh
# This script sets the FLASK_APP environment variable and starts the Flask server
export FLASK_APP=src/index.py
flask run --host=0.0.0.0 --port=5000