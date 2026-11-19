---
id: richtext_label_padding
expect: {components: 1, frame: true}
source: ggtext geom_richtext(label.padding = ...) with different top/right/bottom/left values
data:
  label: "asymmetric padding"
  x: 0.5
  y: 0.5
---

# richtext_label_padding

Label padding of 12 pt top, 2 pt right, 4 pt bottom, 16 pt left.

```r
ggplot(df, aes(x, y, label = label)) +
  geom_richtext(label.padding = grid::unit(c(12, 2, 4, 16), "pt")) +
  xlim(0, 1) + ylim(0, 1)
```

```python plotnine_ggtext
(ggplot(df, aes("x", "y", label="label"))
 + geom_richtext(label_padding=unit([12, 2, 4, 16], "pt"))
 + xlim(0, 1) + ylim(0, 1))
```

```python ggtext
(ggplot(df, aes("x", "y", label="label"))
 + geom_richtext(label_padding=(12, 2, 4, 16))
 + xlim(0, 1) + ylim(0, 1))
```
