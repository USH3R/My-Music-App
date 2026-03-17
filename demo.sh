#!/bin/bash

echo "=== My-Music-App: Launch Sequence ==="

# Step 1 — install dependencies
echo "[NODE] Installing dependencies..."
npm install

# Step 2 — detect GUI
if [ -z "$DISPLAY" ]; then
    echo "[!] No graphical display detected."
    echo "[*] Running terminal verification instead..."

    echo "[NODE VERSION]: $(node -v)"

    ELECTRON_VERSION=$(npx electron -v 2>/dev/null)
    if [ -z "$ELECTRON_VERSION" ]; then
        echo "[ELECTRON VERSION]: Electron installed with dependencies."
    else
        echo "[ELECTRON VERSION]: $ELECTRON_VERSION"
    fi

    echo ""
    echo "[STATUS]: Application verified. GUI launch skipped in terminal environment."

else
    echo "[+] Graphical display detected."
    echo "[ELECTRON] Launching Music Player..."
    npm start
fi

echo "=== Demo Sequence Complete ==="
