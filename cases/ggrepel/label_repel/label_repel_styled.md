---
id: label_repel_styled
data:
  x: [1.0, 1.06, 1.12, 2.2, 2.26]
  y: [1.0, 1.05, 1.02, 2.0, 2.05]
  lbl: ["North", "South", "East", "West", "Center"]
expect:
  components: 5
---
Rounded `geom_label_repel()` boxes with fill, border colour, and leader segments.

```r
ggplot(df, aes(x, y, label = lbl)) +
  geom_point() +
  geom_label_repel(seed = 42, fill = "#fff5cc", colour = "#224488", min.segment.length = 0)
```

```python
(
    ggplot(df, aes("x", "y", label="lbl"))
    + geom_point()
    + geom_label_repel(seed=42, fill="#fff5cc", color="#224488", min_segment_length=0)
)
```
