---
id: textbox_rotated_alignments
geom: geom_textbox
expect: {components: 4, frame: true, measurable: true}
source: ggtext/tests/testthat/test-geom-textbox.R (vdiffr)
data:
  x: 0.5
  y: 0.5
  label: The quick brown fox **jumps over** the *lazy* dog.
  orientation: [upright, left-rotated, inverted, right-rotated]
  box_colour: ['#858E4E', '#24988F', '#8C82B8', '#B97681']
  fill: ['#E6EBD1', '#CDEFE9', '#E8E6FC', '#FEE1E5']
  halign: [0, 0.5, 1, 0.5]
  valign: [1, 0.5, 0.5, 0]
  box_size: [0.1, 0.25, 0.5, 1]
upstream:
  r_ref_png: textbox_rotated_boxes_w_colors_and_alignments.png
  py_baseline: test_geom_textbox/rotated_boxes_w_colors_and_alignments.png
deep_probe: true
---

# textbox_rotated_alignments

Upstream ggtext vdiffr test 'Rotated boxes w/ colors and alignments': word wrap in fixed 1.5in boxes, 4 orientations, halign/valign.

```r
ggplot() +
  geom_textbox(
    data = df,
    aes(x, y, label = label, box.colour = box_colour, fill = fill,
        halign = halign, valign = valign, box.size = box_size,
        orientation = orientation),
    width = grid::unit(1.5, "in"),
    height = grid::unit(1.5, "in"),
    box.margin = grid::unit(rep(0.25, 4), "in"),
    hjust = 0, vjust = 1
  ) +
  xlim(0, 1) + ylim(0, 1) +
  scale_discrete_identity(aesthetics = c("orientation", "box.colour", "fill"))
```

```python plotnine_ggtext
(ggplot()
 + geom_textbox(
     data=df,
     mapping=aes("x", "y", label="label", box_colour="box_colour", fill="fill",
                 halign="halign", valign="valign", box_size="box_size",
                 orientation="orientation"),
     width=unit(1.5, "in"), height=unit(1.5, "in"),
     box_margin=unit([0.25] * 4, "in"),
     hjust=0, vjust=1)
 + xlim(0, 1) + ylim(0, 1)
 + scale_fill_identity())
```

```python ggtext
df = df.assign(box_size=df["box_size"] * 72.27 / 25.4)        # R box.size is mm; this port uses points
(ggplot()
 + geom_textbox(
     data=df,
     mapping=aes("x", "y", label="label", box_colour="box_colour", fill="fill",
                 halign="halign", valign="valign", box_size="box_size",
                 orientation="orientation"),
     width="1in", height="1in",                       # R's 1.5in INCLUDES the 0.25in margins; this port excludes them
     box_margin=18,                                   # 0.25in
     hjust=0, vjust=1)
 + xlim(0, 1) + ylim(0, 1)
 + scale_fill_identity())
```

## VLM rubric

Evaluate geom_textbox parity for 4 square 1.5x1.5in rounded boxes arranged around center (0.5, 0.5). IGNORE minor axis/grid/antialiasing differences. CHECK: (1) exactly 4 square rounded boxes with distinct fills/borders (bottom-right olive upright, top-right teal left-rotated 90 deg, top-left lavender inverted 180 deg, bottom-left pink right-rotated -90 deg), (2) text 'The quick brown fox jumps over the lazy dog.' wraps cleanly INSIDE every box with NO overflow outside the borders, (3) 'jumps over' is BOLD and 'lazy' is ITALIC in all 4 boxes, (4) horizontal/vertical alignments inside boxes match (top-left in olive, centered in teal, right-middle in lavender, center-bottom in pink).
