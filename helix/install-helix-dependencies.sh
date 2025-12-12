#!/bin/bash
set -e

echo "Installing Helix LSP dependencies..."

# Check for npm
if ! command -v npm &> /dev/null; then
    echo "Error: npm is not installed. Please install Node.js first."
    exit 1
fi

echo ""
echo "Installing PHP language server (intelephense)..."
npm install -g intelephense

echo ""
echo "Installing JavaScript/TypeScript language server..."
npm install -g typescript typescript-language-server

echo ""
echo "Installing Vue.js language server..."
npm install -g @vue/language-server @vue/typescript-plugin

echo ""
echo "============================================"
echo "LSP dependencies installed successfully!"
echo "Global npm modules location: $(npm root -g)"
echo "============================================"
echo ""
echo "Verify with:"
echo "  hx --health php"
echo "  hx --health javascript"
echo "  hx --health vue"
echo ""
echo "NOTE: This script assumes macOS with Homebrew."
echo "If using a different system, update the paths in languages.toml"
