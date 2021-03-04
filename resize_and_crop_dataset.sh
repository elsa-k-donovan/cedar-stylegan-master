#!/usr/bin/bash
#
# Resize images keeping the aspect ratio, then cut out the middle

SQUARE_SIZE=128
INPUT_PATH="./Facebook"
OUTPUT_PATH="./square_images"

mkdir -p "$OUTPUT_PATH"
mogrify -path "$OUTPUT_PATH" -resize "$SQUARE_SIZE"x"$SQUARE_SIZE"^ -gravity Center -extent "$SQUARE_SIZE"x"$SQUARE_SIZE" -background transparent -strip -quality 100 "$INPUT_PATH"/*
