---
id: markup_strong_em_entities
expect: {components: 2, frame: true}
source: gridtext markup - <strong>, <em>, and HTML entities
data:
  label: ["<strong>strong</strong> and <em>em</em>", "AT&amp;T &lt;tag&gt;"]
  x: 0.05
  y: [0.7, 0.3]
---

# markup_strong_em_entities

`<strong>`/`<em>` spelled out (not `**`/`*`), and escaped HTML entities that must render as `&` and `<tag>`.

```r
ggplot(df, aes(x, y, label = label)) + geom_richtext(hjust = 0) + xlim(0, 1) + ylim(0, 1)
```

```python
ggplot(df, aes("x", "y", label="label")) + geom_richtext(hjust=0) + xlim(0, 1) + ylim(0, 1)
```
