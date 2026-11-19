---
id: element_markdown_align_widths
expect: {components: 0, measurable: false}
source: ggtext element_markdown(align_widths = TRUE) - boxed tick labels of equal width
data:
  label: ["short", "a much longer label", "mid"]
  n: [3, 5, 4]
---

# element_markdown_align_widths

Boxed y tick labels that all get the width of the widest one.

```r
ggplot(df, aes(n, label)) + geom_col() +
  theme(axis.text.y = element_markdown(fill = "cornsilk", align_widths = TRUE))
```

```python
(ggplot(df, aes("label", "n")) + geom_col() + coord_flip()
 + theme(axis_text_y=element_markdown(fill="cornsilk", align_widths=True)))
```
