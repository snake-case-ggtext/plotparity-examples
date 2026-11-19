---
id: element_markdown_legend
expect: {components: 0, measurable: false}
source: ggtext docs - element_markdown() for legend text
data:
  wt: [2.62, 2.875, 2.32, 3.215, 3.44, 3.46, 3.57, 3.19, 3.15, 3.44]
  mpg: [21.0, 21.0, 22.8, 21.4, 18.7, 18.1, 14.3, 24.4, 22.8, 19.2]
  grp: ["**four**", "**four**", "**four**", "*six*", "*six*", "*six*", "*six*", "<span style='color:#D55E00'>eight</span>", "<span style='color:#D55E00'>eight</span>", "<span style='color:#D55E00'>eight</span>"]
---

# element_markdown_legend

A discrete colour legend whose key labels are markdown/HTML.

```r
ggplot(df, aes(wt, mpg, colour = grp)) + geom_point() +
  theme(legend.text = element_markdown())
```

```python
(ggplot(df, aes("wt", "mpg", color="grp")) + geom_point()
 + theme(legend_text=element_markdown()))
```
