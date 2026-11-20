---
id: label_repel_alpha_italic
data:
  x: [1.0, 1.05, 2.0, 2.05]
  y: [1.0, 1.05, 2.0, 2.05]
  lbl: ["First", "Second", "Third", "Fourth"]
expect:
  components: 4
---
Semi-transparent italic `geom_label_repel()`.

```r
ggplot(df, aes(x, y, label = lbl)) +
  geom_point() +
  geom_label_repel(seed = 42, alpha = 0.8, fontface = "italic", fill = "#fde68a", colour = "#991b1b", min.segment.length = 0)
```

```python
(
    ggplot(df, aes("x", "y", label="lbl"))
    + geom_point()
    + geom_label_repel(seed=42, alpha=0.8, fontstyle="italic", fill="#fde68a", color="#991b1b", min_segment_length=0)
)
```
