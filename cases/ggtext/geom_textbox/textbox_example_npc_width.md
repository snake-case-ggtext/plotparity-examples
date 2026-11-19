---
id: textbox_example_npc_width
geom: geom_textbox
expect: {components: 2, frame: true, measurable: true}
source: ggtext::geom_textbox @examples
data:
  label: "Lorem ipsum dolor **sit amet,** consectetur adipiscing elit,\n    sed do *eiusmod tempor incididunt* ut\
    \ labore et dolore magna\n    aliqua."
  x: [0, 0.6]
  y: [1, 0.6]
  hjust: [0, 0]
  vjust: [1, 0]
  orientation: [upright, right-rotated]
  color: [black, blue]
  fill: [cornsilk, white]
upstream:
  r_ref_png: textbox_example.png
  py_baseline: test_geom_textbox/example_npc_width.png
deep_probe: true
---

# textbox_example_npc_width

Upstream geom_textbox roxygen example: width = 0.4 npc, auto height, right-rotated box. Known cross-engine wrap difference (see known_differences.json).

```r
ggplot(df) +
  aes(x, y, label = label, color = color, fill = fill,
      hjust = hjust, vjust = vjust, orientation = orientation) +
  geom_textbox(width = unit(0.4, "npc")) +
  geom_point(color = "black", size = 2) +
  scale_discrete_identity(aesthetics = c("color", "fill", "orientation")) +
  xlim(0, 1) + ylim(0, 1)
```

```python plotnine_ggtext
(ggplot(df)
 + aes("x", "y", label="label", color="color", fill="fill",
       hjust="hjust", vjust="vjust", orientation="orientation")
 + geom_textbox(width=unit(0.4, "npc"))
 + geom_point(color="black", fill="black", size=2)
 + scale_color_identity()
 + scale_fill_identity()
 + xlim(0, 1) + ylim(0, 1))
```

```python ggtext
(ggplot(df)
 + aes("x", "y", label="label", color="color", fill="fill",
       hjust="hjust", vjust="vjust", orientation="orientation")
 + geom_textbox(width=0.4, newline="space")
 + geom_point(color="black", fill="black", size=2)
 + scale_color_identity()
 + scale_fill_identity()
 + xlim(0, 1) + ylim(0, 1))
```

## VLM rubric

Evaluate geom_textbox with width=0.4 npc (panel-relative width). IGNORE minor axis/grid/antialiasing differences. CHECK: (1) top-left cornsilk upright rounded box wrapping Lorem ipsum inside ~40% of panel width with 'sit amet,' BOLD and 'eiusmod tempor incididunt' ITALIC, (2) right-side white box with blue border and blue text, right-rotated (-90 deg) wrapping cleanly inside the box with NO text overflowing borders.
