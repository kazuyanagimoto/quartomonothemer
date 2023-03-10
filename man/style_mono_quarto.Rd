% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/style_mono_quarto.R
\name{style_mono_quarto}
\alias{style_mono_quarto}
\title{Monotone Theme Maker for Quarto
Makes a monotone theme for Quarto revealjs slides and ggplot.}
\usage{
style_mono_quarto(
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
  color_link = "#0086AB",
  color_bg = "#ffffff",
  color_code = "#0086AB",
  color_code_block_border = "#93a1a1",
  path_scss = "custom.scss",
  size_base = 20
)
}
\arguments{
\item{font_title}{Title font}

\item{font_text}{Text font}

\item{font_code}{Code font}

\item{google_fonts}{Google font names. These fonts will be imported in custom.scss}

\item{size_font_h1}{Font size for h1}

\item{size_font_h2}{Font size for h2}

\item{size_font_h3}{Font size for h3}

\item{size_font_h4}{Font size for h4}

\item{color_base}{Base color}

\item{color_text}{Text color}

\item{color_link}{Link color}

\item{color_bg}{Background color}

\item{color_code}{Code color}

\item{color_code_block_border}{Color of Code block border}

\item{path_scss}{Path of scss (Default: custom.scss)}

\item{size_base}{Base font size for the ggplot2 theme}
}
\description{
Monotone Theme Maker for Quarto
Makes a monotone theme for Quarto revealjs slides and ggplot.
}
\examples{
style_mono_quarto(
    font_title = "Roboto",
    font_text = "Roboto Condensed",
    google_fonts = c("Roboto", "Roboto Condensed")
)
}
