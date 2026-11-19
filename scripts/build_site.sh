#!/bin/sh
# Rebuild the example reports published from docs/ (GitHub Pages): a fresh run of each project, then a report with
# local paths hidden. Usage: scripts/build_site.sh   (PP="uvx --from ../plotparity plotparity" to use a checkout)
set -e
PP=${PP:-plotparity}
cd "$(dirname "$0")/.."
for p in ggtext ggtext-shanellis ridgenine; do
  (cd "projects/$p" && { $PP run -q --no-html || true; } && $PP view --public --no-open --out "../../docs/$p.html")
done
