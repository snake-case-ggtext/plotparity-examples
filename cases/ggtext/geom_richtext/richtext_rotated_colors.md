---
id: richtext_rotated_colors
geom: geom_richtext
expect: {components: 4, frame: true, measurable: true}
source: ggtext/tests/testthat/test-geom-richtext.R (vdiffr)
data:
  x: 0.5
  y: 0.5
  label: The **quick** *brown* fox.
  angle: [0, 45, 90, 135]
  label_colour: ['#858E4E', '#24988F', '#8C82B8', '#B97681']
  fill: ['#E6EBD1', '#CDEFE9', '#E8E6FC', '#FEE1E5']
  label_size: [0.1, 0.25, 0.5, 1]
upstream:
  r_ref_png: richtext_rotated_labels_w_colors.png
  py_baseline: test_geom_richtext/rotated_labels_w_colors.png
---

# richtext_rotated_colors

Upstream ggtext vdiffr test 'Rotated labels w/ colors': rotation, per-row label colour/fill/border width, margins.

```r
ggplot() +
  geom_richtext(
    data = df,
    aes(x, y, label = label, label.colour = label_colour, fill = fill,
        label.size = label_size, angle = angle),
    label.margin = grid::unit(rep(0.25, 4), "in"),
    hjust = 0, vjust = 0.5
  ) +
  xlim(0, 1) + ylim(0, 1) +
  scale_discrete_identity(aesthetics = c("orientation", "label.colour", "fill"))
```

```python plotnine_ggtext
(ggplot()
 + geom_richtext(
     data=df,
     mapping=aes("x", "y", label="label", label_colour="label_colour", fill="fill",
                 label_size="label_size", angle="angle"),
     label_margin=unit([0.25] * 4, "in"),
     hjust=0, vjust=0.5)
 + xlim(0, 1) + ylim(0, 1)
 + scale_fill_identity())
```

```python ggtext
df = df.assign(label_size=df["label_size"] * 72.27 / 25.4)   # R label.size is mm; this port uses points
(ggplot()
 + geom_richtext(
     data=df,
     mapping=aes("x", "y", label="label", label_colour="label_colour", fill="fill",
                 label_size="label_size", angle="angle"),
     label_margin=18,                                 # 0.25in
     hjust=0, vjust=0.5)
 + xlim(0, 1) + ylim(0, 1)
 + scale_fill_identity())
```

## VLM rubric

Evaluate geom_richtext parity for 4 rotated labels radiating from (0.5, 0.5) at angles 0, 45, 90, and 135 degrees. IGNORE minor ggplot2-vs-plotnine axis/grid/margin/antialiasing differences. CHECK: (1) exactly 4 rounded-corner boxes at angles 0 (right/horizontal), 45 (up-right), 90 (straight up), 135 (up-left), (2) distinct pastel fills (olive, teal, lavender, pink) with matching darker borders of increasing stroke width, (3) text 'The quick brown fox.' with 'quick' bold and 'brown' italic in every box, (4) consistent 0.25-in margin gap from center anchor and no extra/duplicate boxes.
