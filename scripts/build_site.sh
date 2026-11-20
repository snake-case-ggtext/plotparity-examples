#!/bin/sh
# Rebuild the example reports published from docs/ (GitHub Pages): a fresh run of each project, then a report with
# local paths hidden. Usage: scripts/build_site.sh   (PP="uvx --from ../plotparity plotparity" to use a checkout)
set -e
PP=${PP:-plotparity}
cd "$(dirname "$0")/.."
for p in ggtext ggtext-shanellis ridgenine; do
  (cd "projects/$p" && { $PP run -q --no-html || true; } && $PP view --public --no-open --out "../../docs/$p.html")
done
for pair in "plotnine-ggbeeswarm:ggbeeswarm-port:ggbeeswarm" "plotnine-ggrepel:ggrepel-port:ggrepel"; do
  proj="${pair%%:*}"; rest="${pair#*:}"; loop="${rest%%:*}"; out="${rest#*:}"
  if [ -d "projects/$proj/.plotparity/runs/loops/$loop" ]; then
    $PP view --public --no-open \
      "projects/$proj/.plotparity/runs/loops/$loop"/iter_* \
      "projects/$proj/.plotparity/runs/loops/$loop"/holdout_* \
      --out "docs/$out.html"
  else
    (cd "projects/$proj" && { $PP run -q --no-html || true; } && $PP view --public --no-open --out "../../docs/$out.html")
  fi
done
