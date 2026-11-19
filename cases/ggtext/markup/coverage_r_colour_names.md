---
id: coverage_r_colour_names
geom: geom_richtext
expect: {components: 1, frame: true, measurable: true}
source: feature matrix; R colour names that matplotlib does not know
data:
  label: R colours <span style='color:red3'>red3</span> <span style='color:grey40'>grey40</span> <span style='color:steelblue'>steel</span>
  x: 0.05
  y: 0.5
---

# coverage_r_colour_names

R colour names (`red3`, `grey40`) in span CSS. Upstream plotnine-ggtext crashes on `red3` (matplotlib has no such colour); R resolves it via `col2rgb`.

```r
ggplot(df, aes(x, y, label = label)) + geom_richtext(hjust = 0) + xlim(0, 1) + ylim(0, 1)
```

```python plotnine_ggtext
ggplot(df, aes("x", "y", label="label")) + geom_richtext(hjust=0) + xlim(0, 1) + ylim(0, 1)
```

```python ggtext
ggplot(df, aes("x", "y", label="label")) + geom_richtext(hjust=0) + xlim(0, 1) + ylim(0, 1)
```
