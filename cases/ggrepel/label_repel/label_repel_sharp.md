---
id: label_repel_sharp
data:
  x: [1.0, 1.05, 2.0, 2.05]
  y: [1.0, 1.06, 1.8, 1.85]
  lbl: ["Sharp A", "Sharp B", "Sharp C", "Sharp D"]
expect:
  components: 4
---
Sharp-corner (`label.r = 0`) label boxes with bold text.

```r
ggplot(df, aes(x, y, label = lbl)) +
  geom_point() +
  geom_label_repel(seed = 42, label.r = unit(0, "lines"), fill = "#e0f2fe", fontface = "bold", min.segment.length = 0)
```

```python
(
    ggplot(df, aes("x", "y", label="lbl"))
    + geom_point()
    + geom_label_repel(seed=42, label_r=0.0, fill="#e0f2fe", fontweight="bold", min_segment_length=0)
)
```
