---
id: element_markdown_title_centred
expect: {components: 1}
source: element_markdown(hjust = 0.5) on the plot title
data:
  wt: [2.62, 2.875, 2.32, 3.215, 3.44, 3.46, 3.57, 3.19, 3.15, 3.44]
  mpg: [21.0, 21.0, 22.8, 21.4, 18.7, 18.1, 14.3, 24.4, 22.8, 19.2]
---

# element_markdown_title_centred

A markdown title centred with hjust = 0.5.

```r
ggplot(df, aes(wt, mpg)) + geom_point() + labs(title = "A **centred** title") +
  theme(plot.title = element_markdown(hjust = 0.5))
```

```python
(ggplot(df, aes("wt", "mpg")) + geom_point() + labs(title="A **centred** title")
 + theme(plot_title=element_markdown(hjust=0.5)))
```
