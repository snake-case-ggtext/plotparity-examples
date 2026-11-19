---
id: coverage_element_textbox_title
geom: coverage
expect: {components: 1, frame: true, measurable: false}
source: 'ggtext docs: element_textbox_simple()'
data:
  wt: [2.62, 2.875, 2.32, 3.215, 3.44, 3.46, 3.57, 3.19, 3.15, 3.44]
  mpg: [21.0, 21.0, 22.8, 21.4, 18.7, 18.1, 14.3, 24.4, 22.8, 19.2]
---

# coverage_element_textbox_title

R ggtext API coverage: element_textbox_simple() wrapping title with fill and padding.

```r
ggplot(df, aes(wt, mpg)) + geom_point() +
  labs(title = paste0("A long **textbox title** that should wrap inside a filled box spanning the full width of the plot, ",
                      "as produced by <span style='color:#0072B2'>element_textbox_simple()</span>.")) +
  theme(plot.title = element_textbox_simple(fill = "cornsilk", padding = margin(5, 5, 5, 5), margin = margin(0, 0, 5, 0)))
```

```python plotnine_ggtext
(ggplot(df, aes("wt", "mpg")) + geom_point()
 + labs(title="A long **textbox title** that should wrap inside a filled box spanning the full width of the plot, "
              "as produced by <span style='color:#0072B2'>element_textbox_simple()</span>.")
 + theme(plot_title=element_textbox_simple(fill="cornsilk", padding=margin(5, 5, 5, 5), margin=margin(0, 0, 5, 0))))
```

```python ggtext
(ggplot(df, aes("wt", "mpg")) + geom_point()
 + labs(title="A long **textbox title** that should wrap inside a filled box spanning the full width of the plot, "
              "as produced by <span style='color:#0072B2'>element_textbox_simple()</span>.")
 + theme(plot_title=element_textbox_simple(fill="cornsilk", padding=5, margin=margin(0, 0, 5, 0))))
```
