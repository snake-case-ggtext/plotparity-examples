---
id: element_markdown_axis_title_right
expect: {components: 1}
source: element_markdown(hjust = 1) on the x-axis title
data:
  wt: [2.62, 2.875, 2.32, 3.215, 3.44, 3.46, 3.57, 3.19, 3.15, 3.44]
  mpg: [21.0, 21.0, 22.8, 21.4, 18.7, 18.1, 14.3, 24.4, 22.8, 19.2]
---

# element_markdown_axis_title_right

A markdown x-axis title aligned right with hjust = 1.

```r
ggplot(df, aes(wt, mpg)) + geom_point() + labs(x = "weight (**1000 lbs**)") +
  theme(axis.title.x = element_markdown(hjust = 1))
```

```python
(ggplot(df, aes("wt", "mpg")) + geom_point() + labs(x="weight (**1000 lbs**)")
 + theme(axis_title_x=element_markdown(hjust=1)))
```
