---
id: textbox_box_padding
expect: {components: 1, frame: true}
source: ggtext geom_textbox(box.padding = ...) with different top/right/bottom/left values
data:
  label: "A text box whose padding differs on every side, so wrapping and placement depend on all four values."
  x: 0.5
  y: 0.5
---

# textbox_box_padding

Text box padding of 12 pt top, 4 pt right, 8 pt bottom, 20 pt left, in a 2 in wide box.

```r
ggplot(df, aes(x, y, label = label)) +
  geom_textbox(width = grid::unit(2, "in"), box.padding = grid::unit(c(12, 4, 8, 20), "pt")) +
  xlim(0, 1) + ylim(0, 1)
```

```python plotnine_ggtext
(ggplot(df, aes("x", "y", label="label"))
 + geom_textbox(width=unit(2, "in"), box_padding=unit([12, 4, 8, 20], "pt"))
 + xlim(0, 1) + ylim(0, 1))
```

```python ggtext
(ggplot(df, aes("x", "y", label="label"))
 + geom_textbox(width="2in", box_padding=(12, 4, 8, 20))
 + xlim(0, 1) + ylim(0, 1))
```
