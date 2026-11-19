---
id: richtext_example_markup
geom: geom_richtext
expect: {components: 4, frame: true, measurable: true}
source: ggtext::geom_richtext @examples (1)
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
  r_ref_png: richtext_example_1.png
  py_baseline: test_geom_richtext/example_markup.png
deep_probe: true
---

# richtext_example_markup

Upstream geom_richtext roxygen example 1: bold, <br>, sup/sub, span colour + font-size, rotation, fills.

```r
ggplot(df) +
  aes(x, y, label = label, angle = angle, color = color, fill = fill,
      hjust = hjust, vjust = vjust) +
  geom_richtext() +
  geom_point(color = "black", size = 2) +
  scale_color_identity() +
  scale_fill_identity() +
  xlim(0, 1) + ylim(0, 1)
```

```python plotnine_ggtext
(ggplot(df)
 + aes("x", "y", label="label", angle="angle", color="color", fill="fill",
       hjust="hjust", vjust="vjust")
 + geom_richtext()
 + geom_point(color="black", fill="black", size=2)
 + scale_color_identity()
 + scale_fill_identity()
 + xlim(0, 1) + ylim(0, 1))
```

```python ggtext
(ggplot(df)
 + aes("x", "y", label="label", angle="angle", color="color", fill="fill",
       hjust="hjust", vjust="vjust")
 + geom_richtext(newline="space")
 + geom_point(color="black", fill="black", size=2)
 + scale_color_identity()
 + scale_fill_identity()
 + xlim(0, 1) + ylim(0, 1))
```

## VLM rubric

Evaluate geom_richtext parity across 4 rich-text labels anchored to black dots. IGNORE minor ggplot2-vs-plotnine axis tick/margin/antialiasing differences. CHECK ALL 4 BOXES CAREFULLY: (1) Top-left cornsilk rounded box: 'Some text in bold.' with 'in bold.' visibly BOLD and rounded corners + padding. (2) Mid-left white box with blue border: 'Linebreaks' on 3 separate lines in blue text. (3) Bottom-center light-blue box rotated +45 deg (tilted up-right): italic 'x' with raised superscript '2', '+ 5', italic 'x', '+ ', italic 'C' with lowered subscript italic 'i'. Check superscript '2' is clearly raised and subscript 'i' is clearly lowered! (4) Mid-right white box with red border rotated -45 deg (tilted down-right): line 1 'Some' (red) + 'blue text in bold.' (BLUE, with 'in bold.' BOLD); line 2 'And italics text.' (red, 'italics text.' italic); line 3 'And some' (red) + 'large' (BLACK, visibly larger 18pt) + 'text.' (red). (5) Verify rounded corners, padding inside frames, correct rotation directions, and exactly 4 boxes (no duplicates).
