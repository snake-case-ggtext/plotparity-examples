---
id: element_markdown_legend_title
expect: {components: 1}
source: ggtext docs - element_markdown() for the legend title
data:
  wt: [2.62, 2.875, 2.32, 3.215, 3.44, 3.46, 3.57, 3.19, 3.15, 3.44]
  mpg: [21.0, 21.0, 22.8, 21.4, 18.7, 18.1, 14.3, 24.4, 22.8, 19.2]
  grp: ["four", "four", "four", "six", "six", "six", "six", "eight", "eight", "eight"]
---

# element_markdown_legend_title

A legend title with bold and italic markdown.

```r
ggplot(df, aes(wt, mpg, colour = grp)) + geom_point() +
  labs(colour = "**Cylinders** *(count)*") +
  theme(legend.title = element_markdown())
```

```python
(ggplot(df, aes("wt", "mpg", color="grp")) + geom_point()
 + labs(color="**Cylinders** *(count)*")
 + theme(legend_title=element_markdown()))
```
