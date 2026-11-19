---
id: richtext_example_no_frame
geom: geom_richtext
expect: {components: 4, frame: false, measurable: true}
source: ggtext::geom_richtext @examples (2)
data:
  label:
  - Some text **in bold.**
  - Linebreaks<br>Linebreaks<br>Linebreaks
  - '*x*<sup>2</sup> + 5*x* + *C*<sub>*i*</sub>'
  - "Some <span style='color:blue'>blue text **in bold.**</span><br>And *italics text.*<br>\n      And some <span\
    \ style='font-size:18pt; color:black'>large</span> text."
  x: [0.2, 0.1, 0.5, 0.9]
  y: [0.8, 0.4, 0.1, 0.5]
  hjust: [0.5, 0, 0, 1]
  vjust: [0.5, 1, 0, 0.5]
  angle: [0, 0, 45, -45]
  color: [black, blue, black, red]
  fill: [cornsilk, white, lightblue, white]
upstream:
  r_ref_png: richtext_example_2_no_frame.png
  py_baseline: test_geom_richtext/example_no_frame.png
---

# richtext_example_no_frame

Upstream geom_richtext roxygen example 2: same markup with no fill, no border, zero padding.

```r
ggplot(df) +
  aes(x, y, label = label, angle = angle, color = color,
      hjust = hjust, vjust = vjust) +
  geom_richtext(
    fill = NA, label.color = NA,
    label.padding = grid::unit(rep(0, 4), "pt")
  ) +
  geom_point(color = "black", size = 2) +
  scale_color_identity() +
  xlim(0, 1) + ylim(0, 1)
```

```python plotnine_ggtext
(ggplot(df)
 + aes("x", "y", label="label", angle="angle", color="color",
       hjust="hjust", vjust="vjust")
 + geom_richtext(fill="none", label_color="none",
                 label_padding=unit([0] * 4, "pt"))
 + geom_point(color="black", fill="black", size=2)
 + scale_color_identity()
 + xlim(0, 1) + ylim(0, 1))
```

```python ggtext
(ggplot(df)
 + aes("x", "y", label="label", angle="angle", color="color",
       hjust="hjust", vjust="vjust")
 + geom_richtext(fill=None, label_size=0, label_padding=0, newline="space")
 + geom_point(color="black", fill="black", size=2)
 + scale_color_identity()
 + xlim(0, 1) + ylim(0, 1))
```

## VLM rubric

Evaluate frameless geom_richtext labels (fill=none, border=none, padding=0). IGNORE minor axis/grid/antialiasing differences. CHECK: (1) NO rectangular background fills or borders around any of the 4 labels, (2) all 4 rich-text labels match in text, bold/italic, blue span, large black 'large', sup '2', sub 'i', and ±45 deg rotations.
