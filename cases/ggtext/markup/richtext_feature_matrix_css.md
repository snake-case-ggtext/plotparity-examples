---
id: richtext_feature_matrix_css
geom: geom_richtext
expect: {components: 3, frame: true, measurable: true}
source: feature matrix from dry run 1's gap list
data:
  label:
  - px <span style='font-size:16px'>sixteen</span> in <span style='font-size:0.2in'>fifth</span>
  - cm <span style='font-size:0.5cm'>half</span> mm <span style='font-size:4mm'>four</span>
  - <b style='color:#009E73'>styled bold</b> and <i style='font-size:14pt'>big italic</i>
  x: 0.05
  y: [0.8, 0.5, 0.2]
---

# richtext_feature_matrix_css

CSS font-size in every unit gridtext accepts (px, in, cm, mm), and a style attribute on `<b>`/`<i>`. One variant per label so a finding names the variant.

```r
ggplot(df, aes(x, y, label = label)) + geom_richtext(hjust = 0) + xlim(0, 1) + ylim(0, 1)
```

```python plotnine_ggtext
ggplot(df, aes("x", "y", label="label")) + geom_richtext(hjust=0) + xlim(0, 1) + ylim(0, 1)
```

```python ggtext
ggplot(df, aes("x", "y", label="label")) + geom_richtext(hjust=0) + xlim(0, 1) + ylim(0, 1)
```
