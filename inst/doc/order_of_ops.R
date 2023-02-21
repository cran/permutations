## ----label=setup,include=FALSE------------------------------------------------
library("permutations")
library("magrittr")

## ----label=definea------------------------------------------------------------
a <- as.cycle("(145)(26)")
a

## -----------------------------------------------------------------------------
options("print_word_as_cycle" = FALSE)
(a <- as.word(a))

## -----------------------------------------------------------------------------
a_active <- rbind(1:6,as.word(a))
rownames(a_active) <- c("place before move","place after move")
a_active

## -----------------------------------------------------------------------------
inverse(a)

## -----------------------------------------------------------------------------
a_passive <- rbind(1:6,as.word(inverse(a)))
rownames(a_passive) <- c("place after move","place before move")
a_passive

## -----------------------------------------------------------------------------
b <- as.word(c(5, 2, 3, 4, 6, 1))
b

## -----------------------------------------------------------------------------
a*b

## -----------------------------------------------------------------------------
as.vector(b)[as.vector(a)]

## -----------------------------------------------------------------------------
fa <- as.function(a)
fb <- as.function(b)
fb(fa(1))
as.function(a*b)(1)  # should match fb(fa(1))

## -----------------------------------------------------------------------------
1 %>% fa %>% fb  # idiom for fb(fa(1)), should match result above

## -----------------------------------------------------------------------------
a   # word form 
a_active  # matrix form (active)
a_passive  # matrix form (passive)

## ----echo=FALSE---------------------------------------------------------------
b_active <- rbind(1:6,as.word(b))
rownames(b_active) <- c("place before move","place after move")
b_passive <- rbind(1:6,as.word(inverse(b)))
rownames(b_passive) <- c("place after move","place before move")

## -----------------------------------------------------------------------------
b
b_active
b_passive

## -----------------------------------------------------------------------------
a_passive
b_passive

## -----------------------------------------------------------------------------
inverse(inverse(b) * inverse(a)) == a*b # both should be TRUE
inverse(b) * inverse(a) == inverse(a*b) # note b precedes a on LHS

## -----------------------------------------------------------------------------
g <- as.cycle(c(1,2,6))
g

## -----------------------------------------------------------------------------
pg <- perm_matrix(g)
pg

## -----------------------------------------------------------------------------
dimnames(pg) <- list(place_before_move=1:6,place_after_move=1:6)
pg

## -----------------------------------------------------------------------------
h <- as.word(c(1,3,4,5,2,6))
h
ph <- perm_matrix(h)
dimnames(ph) <- list(place_before_move=1:6,place_after_move=1:6)
ph

## -----------------------------------------------------------------------------
pg %*% ph

