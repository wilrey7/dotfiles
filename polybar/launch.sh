#!/usr/bin/env bash

# Matiin bar yang lama kalo masih ada
killall -q polybar

# Tunggu sampe bar lama beneran mati
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Jalanin bar baru (nama bar default-nya 'example')
polybar example 2>&1 | tee -a /tmp/polybar.log & disown

echo "Polybar nyala, boss!"
