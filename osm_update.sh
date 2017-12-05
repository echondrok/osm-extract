#!/bin/bash

export PATH=$PATH:/home/root/osmosis/bin
cd /home/root/osm-extract
echo $(date)
make all NAME=thessaloniki URL="https://s3.amazonaws.com/metro-extracts.mapzen.com/thessaloniki_greece.osm.pbf" && psql -d thess_geonode_app -f set_pub_date.sql
echo $(date)
