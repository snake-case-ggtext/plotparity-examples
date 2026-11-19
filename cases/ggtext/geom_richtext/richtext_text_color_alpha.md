---
id: richtext_text_color_alpha
geom: geom_richtext
expect: {components: 3, frame: true, measurable: true}
source: plotnine-ggtext test_geom_richtext.py (no upstream R ref)
data:
  x: [1, 2, 3]
  y: [1, 2, 3]
  label: ['*left* / bottom', '**center**', right / top]
  hjust: [left, center, right]
  vjust: [bottom, middle, top]
---

# richtext_text_color_alpha

Port's own test_text_color_alpha_and_named_just (had no R reference upstream): text colour override, alpha, named hjust/vjust, 14pt.

```r
ggplot(df, aes(x, y, label = label, hjust = hjust, vjust = vjust)) +
  geom_richtext(
    color = "darkblue", text.colour = "firebrick",
    alpha = 0.6, size = 14 / PT_PER_MM
  ) +
  geom_point()
```

```python plotnine_ggtext
(ggplot(df, aes("x", "y", label="label", hjust="hjust", vjust="vjust"))
 + geom_richtext(color="darkblue", text_color="firebrick", alpha=0.6, size=14)
 + geom_point())
```

```python ggtext
(ggplot(df, aes("x", "y", label="label", hjust="hjust", vjust="vjust"))
 + geom_richtext(color="darkblue", text_color="firebrick", alpha=0.6, size=14)
 + geom_point())
```

## VLM rubric

Evaluate 3 geom_richtext boxes at (1,1), (2,2), (3,3) with darkblue borders, firebrick red text, alpha=0.6, and named justifications. CHECK: (1) translucent boxes with darkblue borders and reddish-brown text, (2) alignments relative to points: bottom-left at (1,1), centered at (2,2), top-right at (3,3), (3) '*left* / bottom' has italic 'left', '**center**' is bold.
