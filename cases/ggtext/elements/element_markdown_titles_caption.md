---
id: element_markdown_titles_caption
expect: {components: 3}
source: ggtext README - element_markdown() on axis titles and caption
data:
  wt: [2.62, 2.875, 2.32, 3.215, 3.44, 3.46, 3.57, 3.19, 3.15, 3.44]
  mpg: [21.0, 21.0, 22.8, 21.4, 18.7, 18.1, 14.3, 24.4, 22.8, 19.2]
  grp: ["**four**", "**four**", "**four**", "*six*", "*six*", "*six*", "*six*", "<span style='color:#D55E00'>eight</span>", "<span style='color:#D55E00'>eight</span>", "<span style='color:#D55E00'>eight</span>"]
---

# element_markdown_titles_caption

Markdown in both axis titles and the caption.

```r
ggplot(df, aes(wt, mpg)) + geom_point() +
  labs(x = "**wt** (1000 lbs)", y = "*miles per gallon*", caption = "Source: <span style='color:#0072B2'>mtcars</span>") +
  theme(axis.title.x = element_markdown(), axis.title.y = element_markdown(), plot.caption = element_markdown())
```

```python
(ggplot(df, aes("wt", "mpg")) + geom_point()
 + labs(x="**wt** (1000 lbs)", y="*miles per gallon*", caption="Source: <span style='color:#0072B2'>mtcars</span>")
 + theme(axis_title_x=element_markdown(), axis_title_y=element_markdown(), plot_caption=element_markdown()))
```
