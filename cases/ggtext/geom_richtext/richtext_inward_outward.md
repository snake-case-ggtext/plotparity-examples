---
id: richtext_inward_outward
expect: {components: 3, frame: true}
source: ggplot2 hjust/vjust = "inward" / "outward", supported by geom_richtext
data:
  label: ["inward (left edge)", "inward (right edge)", "outward"]
  x: [0.0, 1.0, 0.7]
  y: [0.5, 0.8, 0.2]
  hjust: [inward, inward, outward]
  vjust: [inward, inward, outward]
---

# richtext_inward_outward

Labels at the panel edges justified "inward" stay inside; "outward" points away from the centre.

```r
ggplot(df, aes(x, y, label = label, hjust = hjust, vjust = vjust)) +
  geom_point() +
  geom_richtext() +
  scale_x_continuous(limits = c(0, 1)) + scale_y_continuous(limits = c(0, 1))
```

```python plotnine_ggtext
(ggplot(df, aes("x", "y", label="label", hjust="hjust", vjust="vjust"))
 + geom_point()
 + geom_richtext()
 + scale_x_continuous(limits=(0, 1)) + scale_y_continuous(limits=(0, 1)))
```

```python ggtext
(ggplot(df, aes("x", "y", label="label", hjust="hjust", vjust="vjust"))
 + geom_point()
 + geom_richtext()
 + scale_x_continuous(limits=(0, 1)) + scale_y_continuous(limits=(0, 1)))
```
