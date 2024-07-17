## ----out.width='20%', out.extra='style="float:right; padding:10px"',echo=FALSE----
knitr::include_graphics(system.file("help/figures/permutations.png", package = "permutations"))

## ----label=setup,include=FALSE------------------------------------------------
library("permutations")
library("magrittr")

## ----label=definea------------------------------------------------------------
a <- as.cycle("(145)(26)")
a

## ----setprintopts-------------------------------------------------------------
options("print_word_as_cycle" = FALSE)
(a <- as.word(a))

## ----showactiveform-----------------------------------------------------------
a_active <- rbind(1:6, as.word(a))
rownames(a_active) <- c("place before move", "place after move")
a_active

## ----printinv-----------------------------------------------------------------
inverse(a)

## ----invpassive---------------------------------------------------------------
a_passive <- rbind(1:6, as.word(inverse(a)))
rownames(a_passive) <- c("place after move", "place before move")
a_passive

## ----coercetoword-------------------------------------------------------------
b <- as.word(c(5, 2, 3, 4, 6, 1))
b

## ----staridiom----------------------------------------------------------------
a * b

## ----operatesasexp------------------------------------------------------------
as.vector(b)[as.vector(a)]

## ----whathappenstoobject------------------------------------------------------
fa <- as.function(a)
fb <- as.function(b)
fb(fa(1))
as.function(a * b)(1) # should match fb(fa(1))

## ----usepipes-----------------------------------------------------------------
1 %>%
  fa() %>%
  fb() # idiom for fb(fa(1)), should match result above

## ----expresspass--------------------------------------------------------------
a # word form
a_active # matrix form (active)
a_passive # matrix form (passive)

## ----asbefore, echo=FALSE-----------------------------------------------------
b_active <- rbind(1:6, as.word(b))
rownames(b_active) <- c("place before move", "place after move")
b_passive <- rbind(1:6, as.word(inverse(b)))
rownames(b_passive) <- c("place after move", "place before move")

## ----showtwo------------------------------------------------------------------
b
b_active
b_passive

## ----showanothertwo-----------------------------------------------------------
a_passive
b_passive

## ----inverseidiom-------------------------------------------------------------
inverse(inverse(b) * inverse(a)) == a * b # both should be TRUE
inverse(b) * inverse(a) == inverse(a * b) # note b precedes a on LHS

## ----geng---------------------------------------------------------------------
g <- as.cycle(c(1, 2, 6))
g

## ----pgperm-------------------------------------------------------------------
pg <- perm_matrix(g)
pg

## ----relabelconv--------------------------------------------------------------
dimnames(pg) <- list(place_before_move = 1:6, place_after_move = 1:6)
pg

## ----hinmatrix----------------------------------------------------------------
h <- as.word(c(1, 3, 4, 5, 2, 6))
h
ph <- perm_matrix(h)
dimnames(ph) <- list(place_before_move = 1:6, place_after_move = 1:6)
ph

## ----ghmatmult----------------------------------------------------------------
pg %*% ph

