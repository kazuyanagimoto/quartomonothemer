#' Monotone Theme Maker for Quarto
#'
#' @param font_title Title font
#' @param font_text Text font
#' @param font_code Code font
#' @param font_sans An unicode font for tables
#' @param google_fonts Google font names.
#'   These fonts will be imported in quartomonothemer.scss
#' @param size_font_h1 Font size for h1
#' @param size_font_h2 Font size for h2
#' @param size_font_h3 Font size for h3
#' @param size_font_h4 Font size for h4
#' @param color_base Base color
#' @param color_accent Accent color
#' @param color_text Text color
#' @param color_link Link color
#' @param color_bg Background color
#' @param color_code Code color
#' @param color_code_block_border Color of Code block border
#' @param path_scss Path of scss
#' @param font_text_table Base font size for gt table
#' @param size_font_table Table text font
#' @param size_base Base font size for the ggplot2 theme
#' @param width_table Table width (Default: 80%)
#' @param add_recommended_scss Add a recommended SCSS settings (Default: TRUE)
#'
#' @examples
#' style_mono_quarto(
#'     font_title = "Roboto",
#'     font_text = "Roboto Condensed",
#'     google_fonts = c("Roboto", "Roboto Condensed")
#' )
#'
#' @export
#'
style_mono_quarto <- function(
    path_scss = NULL,
    font_title = "Josefin Sans",
    font_text = "Montserrat",
    font_code = "Fira Code",
    font_sans = "Noto Sans",
    google_fonts = NULL,
    size_font_h1 = "1.6em",
    size_font_h2 = "1.3em",
    size_font_h3 = "1.15em",
    size_font_h4 = "1.0em",
    color_base = "#009F8C",
    color_accent = "#B75C9D",
    color_text = "#272822",
    color_link = "#B75C9D",
    color_bg = "#ffffff",
    color_code = "#009F8C",
    color_code_block_border = "#93a1a1",
    size_base = 20,
    font_text_table = NULL,
    size_font_table = "0.9em",
    width_table = "80%",
    add_recommended_scss = TRUE
) {


  if (is.null(google_fonts)) {
    google_fonts <- c(font_title, font_text, font_code, font_sans)
  }

  if (is.null(font_text_table)) {
    font_text_table <- c(font_text, font_sans)
  }

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
             color_accent = color_accent,
             color_text = color_text,
             color_link = color_link,
             color_bg = color_bg,
             color_code = color_code,
             color_code_block_border = color_code_block_border,
             path_scss = path_scss,
             add_recommended_scss = add_recommended_scss)

  # Set font & color info in the package environment
  quartomonothemer_env$font_title <- font_title
  quartomonothemer_env$font_text <- font_text
  quartomonothemer_env$size_base <- size_base
  quartomonothemer_env$color_base <- color_base
  quartomonothemer_env$color_accent <- color_accent
  quartomonothemer_env$color_text <- color_text
  quartomonothemer_env$font_text_table <- c(font_text_table, font_sans)
  quartomonothemer_env$size_font_table <- size_font_table
  quartomonothemer_env$width_table <- width_table

}
