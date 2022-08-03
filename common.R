## This script borrows from Hadley's adv-r

knitr::opts_chunk$set(
  comment = "#>",
  collapse = TRUE,
  cache = FALSE,
  # fig.retina = 0.8, # figures are either vectors or 300 dpi diagrams
  # dpi = 300,
  # out.width = "70%",
  # fig.align = 'center',
  fig.width = 6,
  fig.asp = 0.618,  # 1 / phi
  fig.show = "hold"
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
