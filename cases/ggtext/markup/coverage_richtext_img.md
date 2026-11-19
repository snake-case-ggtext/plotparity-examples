---
id: coverage_richtext_img
geom: coverage
expect: {components: 1, frame: true, measurable: false}
source: 'gridtext: <img> tag in rich text'
data:
  x: 0.5
  y: 0.5
  label: <img src='{assets}/coverage_dot.png' width='20'/> inline image
---

# coverage_richtext_img

gridtext feature coverage: inline <img> in rich text. Unmeasured: probes do not record draw_image yet.

```r
ggplot(df, aes(x, y, label = label)) + geom_richtext() + xlim(0, 1) + ylim(0, 1)
```

```python plotnine_ggtext
ggplot(df, aes("x", "y", label="label")) + geom_richtext() + xlim(0, 1) + ylim(0, 1)
```

```python ggtext
ggplot(df, aes("x", "y", label="label")) + geom_richtext() + xlim(0, 1) + ylim(0, 1)
```
