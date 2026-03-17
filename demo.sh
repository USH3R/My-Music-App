#!/bin/bash

echo "=== Music Player Demo Start ==="

# Step 1: Check for Node.js
if ! command -v node &> /dev/null; then
    echo "[ERROR] Node.js is required. Please install Node.js."
    exit 1
fi

# Step 2: Check for npm
if ! command -v npm &> /dev/null; then
    echo "[ERROR] npm is required. Please install npm."
    exit 1
fi

# Step 3: Install dependencies if needed
echo "[NODE] Installing dependencies..."
npm install || echo "[WARN] npm install failed, continuing..."

# Step 4: Launch Electron
echo "[ELECTRON] Launching Music Player..."
npx electron . || echo "[WARN] Electron failed to launch. Make sure main.js exists."

echo "=== Music Player Demo Complete ==="
