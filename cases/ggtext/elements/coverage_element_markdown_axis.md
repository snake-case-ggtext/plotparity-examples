---
id: coverage_element_markdown_axis
geom: coverage
expect: {components: 3, frame: false, measurable: false}
source: 'ggtext README: element_markdown() axis labels'
data:
  species: ['<i style=''color:#0072B2''>setosa</i>', '<i style=''color:#D55E00''>versicolor</i>', '<i style=''color:#009E73''>virginica</i>']
  n: [50, 50, 50]
---

# coverage_element_markdown_axis

R ggtext API coverage: element_markdown() for axis tick labels with styled italics (ggtext README).

```r
ggplot(df, aes(species, n)) + geom_col() + theme(axis.text.x = element_markdown())
```

```python plotnine_ggtext
ggplot(df, aes("species", "n")) + geom_col() + theme(axis_text_x=element_markdown())
```

```python ggtext
ggplot(df, aes("species", "n")) + geom_col() + theme(axis_text_x=element_markdown())
```
