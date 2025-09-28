#!/bin/bash

# batch_png2svg.sh - Convert all PNGs in a folder to SVG using potrace

# Folder to process (default = current folder)
FOLDER="${1:-.}"

# Check if folder exists
if [ ! -d "$FOLDER" ]; then
    echo "Folder '$FOLDER' does not exist."
    exit 1
fi

# Loop over all PNG files
shopt -s nullglob
for PNG in "$FOLDER"/*.png; do
    BASENAME=$(basename "$PNG" .png)
    OUTPUT="$FOLDER/$BASENAME.svg"
    
    echo "Processing '$PNG' → '$OUTPUT' ..."
    
    # Step 1: convert PNG to PGM (binarized)
    convert "$PNG" -threshold 50% -background white -flatten "$FOLDER/$BASENAME.pgm"
    
    # Step 2: vectorize with potrace
    potrace "$FOLDER/$BASENAME.pgm" -s -o "$OUTPUT"
    
    # Clean up intermediate PGM
    rm "$FOLDER/$BASENAME.pgm"
done

echo "✅ All PNGs in '$FOLDER' have been converted to SVG."

