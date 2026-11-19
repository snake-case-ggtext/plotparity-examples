---
id: textbox_native_no_wrap
geom: geom_textbox
expect: {components: 1, frame: true, measurable: true}
source: plotnine-ggtext test_geom_textbox.py (no upstream R ref)
data:
  x: 0.5
  y: 0.5
  label: No wrapping<br>with **width=None**
---

# textbox_native_no_wrap

Port's own test_native_width_no_wrap (no upstream R reference): width = NULL/None means no wrapping; frameless; 16pt.

```r
ggplot(df, aes(x, y, label = label)) +
  geom_textbox(
    width = NULL, box.colour = NA, fill = "lightyellow",
    size = 16 / PT_PER_MM
  ) +
  xlim(0, 1) + ylim(0, 1)
```

```python plotnine_ggtext
(ggplot(df, aes("x", "y", label="label"))
 + geom_textbox(width=None, box_color="none", fill="lightyellow", size=16)
 + xlim(0, 1) + ylim(0, 1))
```

```python ggtext
(ggplot(df, aes("x", "y", label="label"))
 + geom_textbox(width=None, box_color="none", fill="lightyellow", size=16)
 + xlim(0, 1) + ylim(0, 1))
```

## VLM rubric

Evaluate single centered geom_textbox with width=None, no border, lightyellow fill, 16pt font. CHECK: (1) lightyellow rounded background with NO outline border, (2) two lines: 'No wrapping' and 'with width=None' where 'width=None' is BOLD, no unexpected word wrapping.
