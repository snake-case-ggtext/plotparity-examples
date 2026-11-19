---
id: element_markdown_axis_y
expect: {components: 3}
source: ggtext README - markdown axis labels, on the y axis
data:
  wt: [2.62, 2.875, 2.32, 3.215, 3.44, 3.46, 3.57, 3.19, 3.15, 3.44]
  mpg: [21.0, 21.0, 22.8, 21.4, 18.7, 18.1, 14.3, 24.4, 22.8, 19.2]
  grp: ["**four**", "**four**", "**four**", "*six*", "*six*", "*six*", "*six*", "<span style='color:#D55E00'>eight</span>", "<span style='color:#D55E00'>eight</span>", "<span style='color:#D55E00'>eight</span>"]
---

# element_markdown_axis_y

Discrete y-axis tick labels that are markdown/HTML.

```r
ggplot(df, aes(mpg, grp)) + geom_point() +
  theme(axis.text.y = element_markdown())
```

```python
(ggplot(df, aes("mpg", "grp")) + geom_point()
 + theme(axis_text_y=element_markdown()))
```
