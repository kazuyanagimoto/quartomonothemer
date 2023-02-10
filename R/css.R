css_quarto  <- function(
    font_title = NULL,
    font_text = NULL,
    font_code = NULL,
    google_fonts = NULL,
    size_font_h1 = NULL,
    size_font_h2 = NULL,
    size_font_h3 = NULL,
    size_font_h4 = NULL,
    color_base = NULL,
    color_text = NULL,
    color_bg = NULL,
    color_code = NULL,
    color_code_block_border = NULL,
    ls_css_extra = NULL,
    path_scss = NULL
) {
  css_google_fonts <- c('/*-- scss:defaults --*/')
  for (font in google_fonts) {
    css_google_fonts <- c(css_google_fonts,
                          sprintf(
                            '@import url(https://fonts.googleapis.com/css?family=%s&display=swap);',
                            gsub(" ", "+", font)
                          )
    )
  }

  css_fonts <- c('// fonts',
                 sprintf('$font-family-sans-serif: "%s", sans-serif !default;', font_text),
                 sprintf('$font-family-monospace: "%s", monospace !default;', font_code)
  )

  css_colors <- c("// colors",
                  sprintf('$body_bg: %s !default;', color_bg),
                  sprintf('$boy-color: %s !default;', color_text),
                  sprintf('$link-color: %s !default;', color_base)
  )

  css_headings <- c("// headings",
                    sprintf('$presentation-heading-font: "%s", sans-serif !default;', font_title),
                    sprintf('$presentation-heading-color: %s !default;', color_base),
                    sprintf('$h1-font-size: %s !default;', size_font_h1),
                    sprintf('$h2-font-size: %s !default;', size_font_h2),
                    sprintf('$h3-font-size: %s !default;', size_font_h3),
                    sprintf('$h4-font-size: %s !default;', size_font_h4)
  )

  css_code_blocks <- c("// code blocks",
                       sprintf("$code-block-border-color: %s !default;", color_code_block_border),
                       sprintf("$code-color: %s;", color_code)
  )

  css_color_system <- c("// color system",
                        "$white: #ffffff !default;"
  )

  css_extra <- c("\n/*-- scss:rules --*/")
  for (name in names(ls_css_extra)) {
    css_extra <- c(css_extra, paste(name, "{"))

    for (atr in names(ls_css_extra[[name]])) {
      css_extra <- c(css_extra, sprintf("    %s: %s;", atr, ls_css_extra[[name]][[atr]]))
    }

    css_extra <- c(css_extra, "}\n")
  }

  # Export
  list_text <- c(
    css_google_fonts,
    css_fonts,
    css_colors,
    css_headings,
    css_code_blocks,
    css_color_system,
    css_extra
  )

  writeLines(list_text, con = path_scss)

}

