---
id: element_textbox_axis_y
expect: {components: 0, measurable: false}
source: ggtext docs - element_textbox(orientation = "left-rotated") for a wrapped y axis title
data:
  wt: [2.62, 2.875, 2.32, 3.215, 3.44, 3.46, 3.57, 3.19, 3.15, 3.44]
  mpg: [21.0, 21.0, 22.8, 21.4, 18.7, 18.1, 14.3, 24.4, 22.8, 19.2]
  grp: ["**four**", "**four**", "**four**", "*six*", "*six*", "*six*", "*six*", "<span style='color:#D55E00'>eight</span>", "<span style='color:#D55E00'>eight</span>", "<span style='color:#D55E00'>eight</span>"]
---

# element_textbox_axis_y

A long y axis title wrapped in a rotated, filled textbox spanning the panel height.

```r
ggplot(df, aes(wt, mpg)) + geom_point() +
  labs(y = "Fuel economy in **miles per gallon**, measured on the 1974 *Motor Trend* road test") +
  theme(axis.title.y = element_textbox(orientation = "left-rotated", width = grid::unit(1, "npc"),
                                       fill = "cornsilk", halign = 0.5, padding = margin(4, 4, 4, 4)))
```

```python ggtext
(ggplot(df, aes("wt", "mpg")) + geom_point()
 + labs(y="Fuel economy in **miles per gallon**, measured on the 1974 *Motor Trend* road test")
 + theme(axis_title_y=element_textbox(orientation="left-rotated", width=1.0, fill="cornsilk",
                                      halign="center", padding=(4, 4, 4, 4))))
```

```python
(ggplot(df, aes("wt", "mpg")) + geom_point()
 + labs(y="Fuel economy in **miles per gallon**, measured on the 1974 *Motor Trend* road test")
 + theme(axis_title_y=element_textbox(orientation="left-rotated", width=unit(1, "npc"), fill="cornsilk",
                                      halign=0.5, padding=margin(4, 4, 4, 4))))
```
