# comes from:
# https://github.com/tidymodels/TMwR/blob/main/_common.R

theme_transparent <- function(...) {

  ret <- ggplot2::theme_bw(...)

  trans_rect <- ggplot2::element_rect(fill = "transparent", colour = NA)
  ret$panel.background  <- trans_rect
  ret$plot.background   <- trans_rect
  ret$legend.background <- trans_rect
  ret$legend.key        <- trans_rect

  ret$legend.position <- "top"

  ret
}

library(ggplot2)
theme_set(theme_transparent())
