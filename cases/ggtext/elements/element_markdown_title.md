---
id: element_markdown_title
geom: coverage
expect: {components: 2, frame: false}
source: 'ggtext README: element_markdown() titles'
data:
  wt: [2.62, 2.875, 2.32, 3.215, 3.44, 3.46, 3.57, 3.19, 3.15, 3.44]
  mpg: [21.0, 21.0, 22.8, 21.4, 18.7, 18.1, 14.3, 24.4, 22.8, 19.2]
---

# element_markdown_title

R ggtext API coverage: element_markdown() for plot title and subtitle (ggtext README).

```r
ggplot(df, aes(wt, mpg)) + geom_point() +
  labs(title = "**Fuel economy** of <span style='color:#D55E00'>cars</span>",
       subtitle = "*mpg* by weight (1000 lbs)") +
  theme(plot.title = element_markdown(), plot.subtitle = element_markdown())
```

```python plotnine_ggtext
(ggplot(df, aes("wt", "mpg")) + geom_point()
 + labs(title="**Fuel economy** of <span style='color:#D55E00'>cars</span>",
        subtitle="*mpg* by weight (1000 lbs)")
 + theme(plot_title=element_markdown(), plot_subtitle=element_markdown()))
```

```python ggtext
(ggplot(df, aes("wt", "mpg")) + geom_point()
 + labs(title="**Fuel economy** of <span style='color:#D55E00'>cars</span>",
        subtitle="*mpg* by weight (1000 lbs)")
 + theme(plot_title=element_markdown(), plot_subtitle=element_markdown()))
```
