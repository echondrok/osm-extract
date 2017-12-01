#!/bin/bash

export PATH=$PATH:/root/osmosis/bin
cd /root/osm-extract
echo $(date)
make all NAME=thessaloniki URL="https://s3.amazonaws.com/metro-extracts.mapzen.com/thessaloniki_greece.osm.pbf" && psql -d geonode -f set_pub_date.sql
echo $(date)
