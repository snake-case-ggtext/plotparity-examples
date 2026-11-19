---
id: textbox_size_limits_paragraphs
geom: geom_textbox
expect: {components: 4, frame: true, measurable: true}
source: plotnine-ggtext test_geom_textbox.py (no upstream R ref)
data:
  x: [0, 1, 0, 1]
  y: [1, 1, 0, 0]
  label:
  - Lorem ipsum dolor sit amet, *consectetur* adipiscing elit. <span style='color:#B97681'>Quisque tincidunt</span>
    eget arcu in **pulvinar**.<br>Morbi varius leo<sup>2</sup> vel consectetur.
  - Lorem ipsum dolor sit amet, *consectetur* adipiscing elit. <span style='color:#B97681'>Quisque tincidunt</span>
    eget arcu in **pulvinar**.<br>Morbi varius leo<sup>2</sup> vel consectetur.
  - short
  - 'Lorem ipsum dolor sit amet, *consectetur* adipiscing elit. <span style=''color:#B97681''>Quisque tincidunt</span>
    eget arcu in **pulvinar**.<br>Morbi varius leo<sup>2</sup> vel consectetur.


    A second paragraph.'
---

# textbox_size_limits_paragraphs

Port's own test_size_limits_and_paragraphs (no upstream R reference): maxwidth/minheight/maxheight, paragraphs, span hex colour, sup.

```r
ggplot(df, aes(x, y, label = label)) +
  geom_textbox(
    width = unit(0.6, "npc"),
    maxwidth = unit(2.5, "in"),
    minheight = unit(1, "in"),
    maxheight = unit(1.8, "in"),
    fill = "#F0F7FF",
    box.colour = "#748696",
    box.r = unit(3, "pt"),
    valign = 0.5
  ) +
  xlim(-0.5, 1.5) + ylim(-0.5, 1.5)
```

```python plotnine_ggtext
(ggplot(df, aes("x", "y", label="label"))
 + geom_textbox(
     width=unit(0.6, "npc"), maxwidth=unit(2.5, "in"),
     minheight=unit(1, "in"), maxheight=unit(1.8, "in"),
     fill="#F0F7FF", box_color="#748696", box_r=unit(3, "pt"), valign=0.5)
 + xlim(-0.5, 1.5) + ylim(-0.5, 1.5))
```

```python ggtext
(ggplot(df, aes("x", "y", label="label"))
 + geom_textbox(
     width=0.6, maxwidth="2.5in", minheight="1in", maxheight="1.8in",
     fill="#F0F7FF", box_color="#748696", box_r=3, valign=0.5, newline="space")
 + xlim(-0.5, 1.5) + ylim(-0.5, 1.5))
```

## VLM rubric

Evaluate 4 light-blue-filled geom_textbox panels with size limits (maxwidth=2.5in, minheight=1in, maxheight=1.8in). CHECK: (1) all 4 boxes respect width/height bounds, bottom-left 'short' box is still at least 1in tall and vertically centered, (2) bottom-right box shows a second paragraph 'A second paragraph.', (3) inline pink/mauve span 'Quisque tincidunt', italic 'consectetur', bold 'pulvinar', and superscript '2' in 'leo2' render properly.
