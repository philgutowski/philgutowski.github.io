#!/bin/sh
# Render both card faces to PDF (vector) and 300 dpi JPEG for upload to MOO.
# Needs Google Chrome and a network connection for the fonts. Run from anywhere.
set -e
cd "$(dirname "$0")"
CHROME="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"
for side in front back; do
  "$CHROME" --headless --disable-gpu --no-pdf-header-footer --virtual-time-budget=5000 \
    --print-to-pdf="$side.pdf" "file://$PWD/$side.html" 2>/dev/null
  "$CHROME" --headless --disable-gpu --hide-scrollbars --force-device-scale-factor=1 \
    --window-size=1098,648 --virtual-time-budget=5000 \
    --screenshot="$side.png" "file://$PWD/$side.html?raster" 2>/dev/null
  sips -s format jpeg -s formatOptions 95 "$side.png" --out "$side.jpg" >/dev/null
  rm "$side.png"
done
ls -la front.pdf back.pdf front.jpg back.jpg
