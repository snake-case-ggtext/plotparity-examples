---
id: richtext_feature_matrix_scripts
geom: geom_richtext
expect: {components: 2, frame: true, measurable: true}
source: feature matrix from dry run 1's gap list
data:
  label:
  - nested x<sup>a<sup>b</sup></sup> end
  - sized x<sup style='font-size:6pt'>small</sup> and y<sub style='color:red'>red</sub>
  x: 0.05
  y: [0.7, 0.3]
---

# richtext_feature_matrix_scripts

Nested `<sup>`, and `<sup>`/`<sub>` carrying their own style (font-size, colour), which gridtext applies after the 0.8× shrink.

```r
ggplot(df, aes(x, y, label = label)) + geom_richtext(hjust = 0) + xlim(0, 1) + ylim(0, 1)
```

```python plotnine_ggtext
ggplot(df, aes("x", "y", label="label")) + geom_richtext(hjust=0) + xlim(0, 1) + ylim(0, 1)
```

```python ggtext
ggplot(df, aes("x", "y", label="label")) + geom_richtext(hjust=0) + xlim(0, 1) + ylim(0, 1)
```
