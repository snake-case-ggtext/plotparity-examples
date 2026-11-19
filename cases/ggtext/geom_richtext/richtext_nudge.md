---
id: richtext_nudge
expect: {components: 2, frame: true}
source: ggtext geom_richtext(nudge_x, nudge_y)
data:
  label: ["not nudged", "nudged"]
  x: 0.4
  y: [0.7, 0.3]
---

# richtext_nudge

The second label is nudged by (0.2, 0.1) data units; points mark the unnudged anchors.

```r
ggplot(df, aes(x, y, label = label)) +
  geom_point() +
  geom_richtext(data = df[1, ]) +
  geom_richtext(data = df[2, ], nudge_x = 0.2, nudge_y = 0.1) +
  xlim(0, 1) + ylim(0, 1)
```

```python plotnine_ggtext
(ggplot(df, aes("x", "y", label="label"))
 + geom_point()
 + geom_richtext(data=df.iloc[[0]])
 + geom_richtext(data=df.iloc[[1]], nudge_x=0.2, nudge_y=0.1)
 + xlim(0, 1) + ylim(0, 1))
```

```python ggtext
(ggplot(df, aes("x", "y", label="label"))
 + geom_point()
 + geom_richtext(data=df.iloc[[0]])
 + geom_richtext(data=df.iloc[[1]], nudge_x=0.2, nudge_y=0.1)
 + xlim(0, 1) + ylim(0, 1))
```
