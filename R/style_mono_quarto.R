#' Monotone Theme Maker for Quarto
#' Makes a monotone theme for Quarto revealjs slides and ggplot.
#' @param font_title Title font
#' @param font_text Text font
#' @param font_code Code font
#' @param google_fonts Google font names. `showtext` installs them
#' @param size_font_h1 Font size for h1
#' @param size_font_h2 Font size for h2
#' @param size_font_h3 Font size for h3
#' @param size_font_h4 Font size for h4
#' @param color_base Base color
#' @param color_text Text color
#' @param color_bg Background color
#' @param color_code Code color
#' @param color_code_block_border Color of Code block border
#' @param path_scss Path of scss (Default: custom.scss)
#' @param size_base Base font size for the ggplot2 theme
#'
#' @export
#'
#' @examples
#' style_mono_quarto(
#'     font_title = "Roboto",
#'     font_text = "Roboto Condensed",
#'     google_fonts = c("Roboto", "Roboto Condensed")
#' )
style_mono_quarto <- function(
    font_title = "Josefin Sans",
    font_text = "Montserrat",
    font_code = "Fira Mono",
    google_fonts = c("Josefin Sans", "Montserrat", "Fira Mono"),
    size_font_h1 = "1.6em",
    size_font_h2 = "1.3em",
    size_font_h3 = "1.15em",
    size_font_h4 = "1.0em",
    color_base = "#0086AB",
    color_text = "#272822",
    color_bg = "#ffffff",
    color_code = "#0086AB",
    color_code_block_border = "#93a1a1",
    path_scss = "custom.scss",
    size_base = 20
) {

  # Create custom.scss
  css_quarto(font_title = font_title,
             font_text = font_text,
             font_code = font_code,
             google_fonts = google_fonts,
             size_font_h1 = size_font_h1,
             size_font_h2 = size_font_h2,
             size_font_h3 = size_font_h3,
             size_font_h4 = size_font_h4,
             color_base = color_base,
             color_text = color_text,
             color_bg = color_bg,
             color_code = color_code,
             color_code_block_border = color_code_block_border,
             path_scss = path_scss)

  # Set font & color info in the package environment
  quartomonothemer_env$font_title <- font_title
  quartomonothemer_env$font_text <- font_text
  quartomonothemer_env$size_base <- size_base
  quartomonothemer_env$color_base <- color_base
  quartomonothemer_env$color_text <- color_text

}
