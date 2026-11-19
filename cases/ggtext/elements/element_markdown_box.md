---
id: element_markdown_box
expect: {components: 0, measurable: false}
source: ggtext docs - element_markdown(fill, box.colour, linetype, padding, r)
data:
  wt: [2.62, 2.875, 2.32, 3.215, 3.44, 3.46, 3.57, 3.19, 3.15, 3.44]
  mpg: [21.0, 21.0, 22.8, 21.4, 18.7, 18.1, 14.3, 24.4, 22.8, 19.2]
  grp: ["**four**", "**four**", "**four**", "*six*", "*six*", "*six*", "*six*", "<span style='color:#D55E00'>eight</span>", "<span style='color:#D55E00'>eight</span>", "<span style='color:#D55E00'>eight</span>"]
---

# element_markdown_box

A title drawn in a box: fill, dashed outline, padding and rounded corners.

```r
ggplot(df, aes(wt, mpg)) + geom_point() + labs(title = "A **boxed** title") +
  theme(plot.title = element_markdown(fill = "cornsilk", box.colour = "grey30", linetype = "dashed",
                                      padding = margin(4, 8, 4, 8), r = grid::unit(4, "pt")))
```

```python ggtext
(ggplot(df, aes("wt", "mpg")) + geom_point() + labs(title="A **boxed** title")
 + theme(plot_title=element_markdown(fill="cornsilk", box_color="#4D4D4D", linestyle="dashed",
                                     padding=(4, 8, 4, 8), r=4)))
```

```python
(ggplot(df, aes("wt", "mpg")) + geom_point() + labs(title="A **boxed** title")
 + theme(plot_title=element_markdown(fill="cornsilk", box_color="#4D4D4D", linetype="dashed",
                                     padding=margin(4, 8, 4, 8), r=unit(4, "pt"))))
```
