## ----set-options, echo = FALSE------------------------------------------------
knitr::opts_chunk$set(collapse = TRUE, comment = "#>", dev = "png", fig.width = 7, fig.height = 3.5, message = FALSE, warning = FALSE)
options(width = 80, tibble.width = Inf)
suppressMessages(suppressWarnings(require("permutations")))

## -----------------------------------------------------------------------------
set.seed(0)
x <- rperm(r=9)
print_word(x)
print_cycle(x)

## -----------------------------------------------------------------------------
x <- rperm(r=9,moved=3)
print_word(x)
print_cycle(x)

## -----------------------------------------------------------------------------
x <- rperm(n=2)
y <- as.cycle(x)
unclass(x)  # shows internal representation (x is in word form)
unclass(y)  # shows internal representation (x is in cycle form)
x   # default: print to console 
y   # default: print to console 

## -----------------------------------------------------------------------------
options(print_word_as_cycle = FALSE)
x
y

## -----------------------------------------------------------------------------
options(print_word_as_cycle = TRUE)  # restore default

## -----------------------------------------------------------------------------
x <- rperm(r=15,moved=4)
print_cycle(x)

## -----------------------------------------------------------------------------
options("comma" = TRUE)
rperm(3,r=9)   # commas printed irregardless

## -----------------------------------------------------------------------------
options("comma" = FALSE)
x <- rperm(3,r=20) 
x     # commas not printed irregardless
options("comma" = NULL) # restore default
x     # default for comparison

## -----------------------------------------------------------------------------
set.seed(0)
x <- rperm(n=3)
dput(x)
x

## -----------------------------------------------------------------------------
options(perm_set = letters)
rperm()

## -----------------------------------------------------------------------------
(xx <- rperm(n=2,r=26))

## -----------------------------------------------------------------------------
options(comma = FALSE)
xx

## -----------------------------------------------------------------------------
(z <- rperm(n=2,r=50))

## -----------------------------------------------------------------------------
options(perm_set = state.abb)
options(comma = TRUE)
z

## ----label=reset_print_defaults-----------------------------------------------
options(perm_set = NULL)
options(comma = NULL)
options(print_word_as_cycle = FALSE)

