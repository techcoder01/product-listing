#!/bin/bash

# Activate the virtual environment if you're using one
# source venv/bin/activate

# Install dependencies
pip install -r requirements.txt

# Run Django collectstatic
python manage.py collectstatic --no-input
