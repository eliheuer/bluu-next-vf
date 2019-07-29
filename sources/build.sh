#!/bin/bash
set -e

echo "\n[INFO] Starting build script"
echo "[INFO] Generating variable fonts"
echo "[INFO]   Making 'fonts/variable' directory if it doesn't already exist"
mkdir -p ../fonts/variable

glyphsSource="BluuNext-VF.glyphs"
outputDir="../fonts/variable"

for i in $glyphsSource; do
    echo "[TEST]   Queued source file: $i"
done

echo "[INFO]   Building Bluu Next VF with Fontmake"
fontmake -g $glyphsSource -o variable \
    --output-path $outputDir/BluuNext-VF.ttf \
    --verbose ERROR

echo "[INFO] Removing build directories"
rm -rf master_ufo/ instance_ufo/
