## ----out.width='20%', out.extra='style="float:right; padding:10px"',echo=FALSE----
knitr::include_graphics(system.file("help/figures/permutations.png", package = "permutations"))

## ----set-options, echo = FALSE------------------------------------------------
knitr::opts_chunk$set(collapse = TRUE, comment = "#>", dev = "png", fig.width = 7, fig.height = 3.5, message = FALSE, warning = FALSE)
options(width = 80, tibble.width = Inf)

## -----------------------------------------------------------------------------
library("permutations")
options("print_word_as_cycle" = FALSE)

## -----------------------------------------------------------------------------
a <- as.word(char2cycle("(175296)(348)"))
b <- as.word(char2cycle("(27)(45)(89)"))
a
b

## -----------------------------------------------------------------------------
M <- diag(9)
rownames(M) <- 1:9
colnames(M) <- 1:9
M

## -----------------------------------------------------------------------------
M[a, ]

## -----------------------------------------------------------------------------
all(M[as.word(id, 9), ] == diag(9))
all(M[a * b, ] == M[a, ] %*% M[b, ])

## -----------------------------------------------------------------------------
all(M[inverse(a), ] == solve(M[a, ]))

## -----------------------------------------------------------------------------
all(M[, a * b] == M[, a] %*% M[, b])

## -----------------------------------------------------------------------------
all(M[, b * a] == M[, a] %*% M[, b])

## ----label=restore_default, include=FALSE-------------------------------------
options("print_word_as_cycle" = FALSE)

