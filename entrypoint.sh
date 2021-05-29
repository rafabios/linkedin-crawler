#!/bin/sh

poetry run HEADLESS=$HEADLESS EMAIL=$EMAIL PASSWORD=PASSWORD python crawler/crawler.py --profile=$PROFILE
