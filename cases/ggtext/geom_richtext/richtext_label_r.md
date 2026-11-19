---
id: richtext_label_r
expect: {components: 2, frame: true}
source: ggtext geom_richtext(label.r = ...); argument existed in both packages but was untested
data:
  label: ["square corners", "round corners"]
  x: 0.5
  y: [0.65, 0.35]
---

# richtext_label_r

Corner radius of the label box: 0 pt and 8 pt (R's default is 0.15 lines).

```r
ggplot(df, aes(x, y, label = label)) +
  geom_richtext(data = df[1, ], label.r = grid::unit(0, "pt"), size = 6) +
  geom_richtext(data = df[2, ], label.r = grid::unit(8, "pt"), size = 6) +
  xlim(0, 1) + ylim(0, 1)
```

```python plotnine_ggtext
(ggplot(df, aes("x", "y", label="label"))
 + geom_richtext(data=df.iloc[[0]], label_r=unit(0, "pt"), size=6 * 72.27 / 25.4)
 + geom_richtext(data=df.iloc[[1]], label_r=unit(8, "pt"), size=6 * 72.27 / 25.4)
 + xlim(0, 1) + ylim(0, 1))
```

```python ggtext
(ggplot(df, aes("x", "y", label="label"))
 + geom_richtext(data=df.iloc[[0]], label_r=0, size=6 * 72.27 / 25.4)
 + geom_richtext(data=df.iloc[[1]], label_r=8, size=6 * 72.27 / 25.4)
 + xlim(0, 1) + ylim(0, 1))
```
