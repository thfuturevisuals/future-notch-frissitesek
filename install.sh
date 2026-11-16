#!/bin/bash
# Future Notch – telepítés / frissítés egy sorral:
#   curl -fsSL https://raw.githubusercontent.com/thfuturevisuals/future-notch-frissitesek/main/install.sh | bash
set -euo pipefail
BASE="https://raw.githubusercontent.com/thfuturevisuals/future-notch-frissitesek/main"
INFO=$(curl -fsSL "$BASE/latest.json")
ZIP=$(printf '%s' "$INFO" | /usr/bin/python3 -c 'import json,sys; print(json.load(sys.stdin)["zip"])')
SHA=$(printf '%s' "$INFO" | /usr/bin/python3 -c 'import json,sys; print(json.load(sys.stdin)["sha256"])')
TMP=$(mktemp -d)
trap 'rm -rf "$TMP"' EXIT
echo "Future Notch letöltése: $ZIP"
curl -fL --progress-bar "$BASE/$ZIP" -o "$TMP/fn.zip"
GOT=$(shasum -a 256 "$TMP/fn.zip" | cut -d' ' -f1)
if [ "$GOT" != "$SHA" ]; then echo "Hibás letöltés (ellenőrzőösszeg). Próbáld újra." >&2; exit 1; fi
ditto -x -k "$TMP/fn.zip" "$TMP/app"
osascript -e 'tell application "Future Notch" to quit' >/dev/null 2>&1 || true
sleep 1
rm -rf "/Applications/Future Notch.app"
mv "$TMP/app/Future Notch.app" /Applications/
xattr -dr com.apple.quarantine "/Applications/Future Notch.app" 2>/dev/null || true
open "/Applications/Future Notch.app"
echo "Kész: a Future Notch elindult. A további frissítéseket magától kéri."
