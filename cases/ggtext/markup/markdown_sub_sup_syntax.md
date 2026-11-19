---
id: markdown_sub_sup_syntax
geom: geom_richtext
expect: {components: 1, frame: true, measurable: true}
source: feature matrix; R markdown (litedown) ~sub~ / ^sup^ extension
data:
  label: markdown H~2~O and E=mc^2^
  x: 0.05
  y: 0.5
---

# markdown_sub_sup_syntax

R ggtext's markdown renders `~x~` as subscript and `^x^` as superscript; upstream plotnine-ggtext passes them through literally.

```r
ggplot(df, aes(x, y, label = label)) + geom_richtext(hjust = 0) + xlim(0, 1) + ylim(0, 1)
```

```python plotnine_ggtext
ggplot(df, aes("x", "y", label="label")) + geom_richtext(hjust=0) + xlim(0, 1) + ylim(0, 1)
```

```python ggtext
ggplot(df, aes("x", "y", label="label")) + geom_richtext(hjust=0) + xlim(0, 1) + ylim(0, 1)
```
