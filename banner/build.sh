#!/bin/sh
# Render the LinkedIn banner with headless Chrome at twice LinkedIn's 1584 x 396 size,
# so it stays sharp on retina screens. LinkedIn scales it down for everything else.
set -e
cd "$(dirname "$0")"
CHROME="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"
"$CHROME" --headless --disable-gpu --hide-scrollbars --force-device-scale-factor=2 \
  --window-size=1584,396 --virtual-time-budget=5000 \
  --screenshot="linkedin-banner.png" "file://$PWD/banner.html" 2>/dev/null
ls -la linkedin-banner.png
