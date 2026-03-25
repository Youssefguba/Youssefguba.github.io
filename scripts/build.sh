#!/bin/bash
set -e

echo "Syncing root → docs/..."
cp index.html docs/index.html
cp sitemap.xml docs/sitemap.xml
cp robots.txt docs/robots.txt
cp manifest.json docs/manifest.json
echo "Done. docs/ is up to date."
