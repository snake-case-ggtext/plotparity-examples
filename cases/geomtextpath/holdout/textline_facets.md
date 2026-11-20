---
id: textline_facets
data:
  x: [0.0000, 0.2167, 0.4333, 0.6500, 0.8666, 1.0833, 1.3000, 1.5166, 1.7333, 1.9500, 2.1666, 2.3833, 2.5999, 2.8166, 3.0333, 3.2499, 3.4666, 3.6832, 3.8999, 4.1166, 4.3332, 4.5499, 4.7666, 4.9832, 5.1999, 5.4165, 5.6332, 5.8499, 6.0665, 6.2832, 0.0000, 0.2167, 0.4333, 0.6500, 0.8666, 1.0833, 1.3000, 1.5166, 1.7333, 1.9500, 2.1666, 2.3833, 2.5999, 2.8166, 3.0333, 3.2499, 3.4666, 3.6832, 3.8999, 4.1166, 4.3332, 4.5499, 4.7666, 4.9832, 5.1999, 5.4165, 5.6332, 5.8499, 6.0665, 6.2832]
  y: [0.0000, 0.2150, 0.4199, 0.6052, 0.7622, 0.8835, 0.9635, 0.9985, 0.9868, 0.9290, 0.8277, 0.6877, 0.5156, 0.3193, 0.1081, -0.1081, -0.3193, -0.5156, -0.6877, -0.8277, -0.9290, -0.9868, -0.9985, -0.9635, -0.8835, -0.7622, -0.6052, -0.4199, -0.2150, -0.0000, 1.0000, 0.9766, 0.9076, 0.7961, 0.6474, 0.4684, 0.2675, 0.0541, -0.1618, -0.3701, -0.5612, -0.7260, -0.8569, -0.9477, -0.9941, -0.9941, -0.9477, -0.8569, -0.7260, -0.5612, -0.3701, -0.1618, 0.0541, 0.2675, 0.4684, 0.6474, 0.7961, 0.9076, 0.9766, 1.0000]
  lbl: ["Panel sine", "Panel sine", "Panel sine", "Panel sine", "Panel sine", "Panel sine", "Panel sine", "Panel sine", "Panel sine", "Panel sine", "Panel sine", "Panel sine", "Panel sine", "Panel sine", "Panel sine", "Panel sine", "Panel sine", "Panel sine", "Panel sine", "Panel sine", "Panel sine", "Panel sine", "Panel sine", "Panel sine", "Panel sine", "Panel sine", "Panel sine", "Panel sine", "Panel sine", "Panel sine", "Panel cosine", "Panel cosine", "Panel cosine", "Panel cosine", "Panel cosine", "Panel cosine", "Panel cosine", "Panel cosine", "Panel cosine", "Panel cosine", "Panel cosine", "Panel cosine", "Panel cosine", "Panel cosine", "Panel cosine", "Panel cosine", "Panel cosine", "Panel cosine", "Panel cosine", "Panel cosine", "Panel cosine", "Panel cosine", "Panel cosine", "Panel cosine", "Panel cosine", "Panel cosine", "Panel cosine", "Panel cosine", "Panel cosine", "Panel cosine"]
  panel: ["A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "B", "B", "B", "B", "B", "B", "B", "B", "B", "B", "B", "B", "B", "B", "B", "B", "B", "B", "B", "B", "B", "B", "B", "B", "B", "B", "B", "B", "B", "B"]
expect:
  components: 2
---
Multi-panel `facet_wrap(~panel)` curved text lines.

```r
ggplot(df, aes(x, y, label = lbl)) +
  geom_textline() +
  facet_wrap(~panel)
```

```python
(
    ggplot(df, aes("x", "y", label="lbl"))
    + geom_textline()
    + facet_wrap("~panel")
)
```
