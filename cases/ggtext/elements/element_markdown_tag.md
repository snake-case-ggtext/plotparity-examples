---
id: element_markdown_tag
expect: {components: 1}
source: ggplot2 plot tags with element_markdown()
data:
  wt: [2.62, 2.875, 2.32, 3.215, 3.44, 3.46, 3.57, 3.19, 3.15, 3.44]
  mpg: [21.0, 21.0, 22.8, 21.4, 18.7, 18.1, 14.3, 24.4, 22.8, 19.2]
---

# element_markdown_tag

A bold markdown plot tag in the top-left corner.

```r
ggplot(df, aes(wt, mpg)) + geom_point() + labs(tag = "**A**") +
  theme(plot.tag = element_markdown())
```

```python
(ggplot(df, aes("wt", "mpg")) + geom_point() + labs(tag="**A**")
 + theme(plot_tag=element_markdown()))
```
