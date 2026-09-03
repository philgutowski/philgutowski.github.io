#!/bin/sh
# Render the LinkedIn banner to a 1584 x 396 PNG with headless Chrome.
set -e
cd "$(dirname "$0")"
CHROME="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"
"$CHROME" --headless --disable-gpu --hide-scrollbars --force-device-scale-factor=1 \
  --window-size=1584,396 --virtual-time-budget=5000 \
  --screenshot="linkedin-banner.png" "file://$PWD/banner.html" 2>/dev/null
ls -la linkedin-banner.png
