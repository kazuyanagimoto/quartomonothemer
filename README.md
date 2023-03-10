
# quartomonothemer

<!-- badges: start -->
<!-- badges: end -->

<img src="man/figures/quartomonothemer.gif">


This package provides a custom Quarto Revealjs theme and a ggplot2 theme.
This work is strongly influenced by [xaringanthemer](https://pkg.garrickadenbuie.com/xaringanthemer/),
but supports only limited features.

You can find more examples [here](https://github.com/kazuyanagimoto/quarto-slides-example)

## Installation

You can install the development version of quartomonothemer from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("kazuyanagimoto/quartomonothemer")
```

## Example

First, add `custom.scss` file to the YAML header.

``` yaml
format:
  revealjs:
    theme: custom.scss
```

Then, run `style_mono_quarto()` inside of the slide qmd file. It produces the `custom.scss`

``` r
library(quartomonothemer)

font_title <- "Josefin Sans"
font_text <- "Montserrat"
color_base <- "#0086AB"
color_base_light <- "#97D3E3"
gray <- "#bebebe"
darkgray <- "#6d6d6d"

font_add_google(font_title)
font_add_google(font_text)
showtext_auto()

style_mono_quarto(
  font_title = font_title,
  font_text = font_text,
  google_fonts = c(font_title, font_text),
  color_base = color_base,
  color_link = color_base,
  color_code = color_base,
  path_scss = "/path/to/custom.scss"
)
```

This package also provide `theme_quarto()` based on the title and text fonts.

``` r
library(palmerpenguins)
penguins |>
  ggplot(aes(x = flipper_length_mm, y = bill_length_mm,
             color = species, shape = species)) +
  geom_point(size = 3) +
  scale_color_manual(values = c(color_base, color_base_light, darkgray)) +
  labs(x = "Flipper Length (mm)", y = "Bill Length (mm)") +
  theme_quarto() +
  theme(legend.position = c(0.9, 0.1))
```

Note that it does not provide any color maps. You need to specify by `scale_*_manual()`
