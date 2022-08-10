## This script borrows from Hadley's adv-r & ggplot2

knitr::opts_chunk$set(
  comment = "#>",
  collapse = TRUE,
  cache = TRUE,
  # fig.retina = 0.8, # figures are either vectors or 300 dpi diagrams
  # dpi = 300,
  # out.width = "70%",
  fig.align = 'center'
  # fig.width = 6,
  # fig.asp = 0.618,  # 1 / phi
  # fig.show = "hold"
)

options(
  digits = 3,
  width = 68,
  str = strOptions(strict.width = "cut"),
  crayon.enabled = FALSE
)

status <- function(type) {
  # status <- switch(type,
  #                  polishing = "should be readable but is currently undergoing final polishing",
  #                  restructuring = "is undergoing heavy restructuring and may be confusing or incomplete",
  #                  drafting = "is currently a dumping ground for ideas, and we don't recommend reading it",
  #                  complete = "is largely complete and just needs final proof reading",
  #                  stop("Invalid `type`", call. = FALSE)
  # )
  status <- switch(type,
                   drafting = "目前为初步构想，不建议阅读",
                   writing = "正在进行写作和结构调整，可能出现混乱或不完整的情况",
                   polishing = "目前正在进行润色，基本是可读的",
                   complete = "已基本完成，只需进行最后的校对",
                   stop("Invalid `type`", call. = FALSE)
  )

  class <- switch(type,
                  drafting = "callout-important",
                  writing = "callout-warning",
                  polishing = "callout-note",
                  complete = "callout-tip"
  )

  # knitr::asis_output(paste0(
  #   "::: ", class, "\n",
  #   "## Second edition\n",
  #   "You are reading the work-in-progress second edition of R Packages. ",
  #   "This chapter ", status, ". \n",
  #   ":::\n"
  # ))
  knitr::asis_output(paste0(
    "::: ", class, "\n",
    "## 各位看客：\n",
    "*Learn-R* 仍在写作流程中。",
    "本章节", status, "。 \n",
    ":::\n"
  ))
}

columns <- function(n, aspect_ratio = 1, max_width = if (n == 1) 0.7 else 1) {

  out_width <- paste0(round(max_width * 100 / n, 1), "%")
  width <- 6 / n * max_width

  knitr::opts_chunk$set(
    fig.width = width,
    fig.height = width * aspect_ratio,
    # fig.align = if (max_width < 1) "center" else "default",
    fig.align = "center",
    fig.show = if (n == 1) "asis" else "hold",
    fig.retina = NULL,
    out.width = out_width,
    out.extra = paste0("style='max-width: ", round(width, 2), "in'")
  )
}


# columns <- function(n, aspect_ratio = 1, max_width = if (n == 1) 0.65 else 1) {
#   if (is_latex()) {
#     out_width <- paste0(round(max_width / n, 3), "\\linewidth")
#     knitr::knit_hooks$set(plot = plot_hook_bookdown)
#   } else {
#     out_width <- paste0(round(max_width * 100 / n, 1), "%")
#   }
#
#   width <- 6 / n * max_width
#
#   knitr::opts_chunk$set(
#     fig.width = width,
#     fig.height = width * aspect_ratio,
#     fig.align = if (max_width < 1) "center" else "default",
#     fig.show = if (n == 1) "asis" else "hold",
#     fig.retina = NULL,
#     out.width = out_width,
#     out.extra = if (!is_latex())
#       paste0("style='max-width: ", round(width, 2), "in'")
#   )
# }
