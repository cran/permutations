## ----setup, include=FALSE-----------------------------------------------------
knitr::opts_chunk$set(echo = TRUE)
library("permutations")
set.seed(0)

## ----out.width='20%', out.extra='style="float:right; padding:10px"',echo=FALSE----
knitr::include_graphics(system.file("help/figures/permutations.png", package = "permutations"))

## ----showfunctionattop--------------------------------------------------------
as.function.permutation

## ----label=coercestraight-----------------------------------------------------
g <- as.cycle("(45)(127)")
as.function(g)(4)

## ----showvector---------------------------------------------------------------
as.function(g)(1:7)
as.function(allperms(4))(3)
as.function(rperm(7,8))(1:7)

## ----showerror, error=TRUE----------------------------------------------------
try({
(p <- cyc_len(2))
as.function(p)(3)
})

## ----showmatrixerror, error=TRUE----------------------------------------------
try({
t(1:2)[,3]
})

## ----thisoneworks-------------------------------------------------------------
as.function(as.word(p,n=3))(3)

## ----iderror, error=TRUE------------------------------------------------------
try({
as.function(id)(4)
})

## -----------------------------------------------------------------------------
as.function(as.word(id,n=4))(4)

