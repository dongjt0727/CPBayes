#' CPBayes: An R-package implemeting a Bayesian meta analysis method for studying cross-phenotype
#' genetic associations.
#'
#' Simultaneous analysis of genetic associations with multiple phenotypes may reveal shared
#' genetic susceptibility across traits (pleiotropy). CPBayes is a Bayesian meta analysis
#' method for studying cross-phenotype genetic associations. It uses summary-level data
#' across multiple phenotypes to simultaneously measure the evidence of aggregate-level
#' pleiotropic association and estimate an optimal subset of traits associated with the
#' risk locus. CPBayes is based on a spike and slab prior and is implemented by Markov
#' chain Monte Carlo (MCMC) technique Gibbs sampling.
#'
#' The package consists of five main functions:
#' \code{\link{cpbayes_uncor}}, \code{\link{cpbayes_cor}}, \code{\link{post_summaries}}, \code{\link{forest_cpbayes}},
#' and \code{\link{estimate_corln}}.
#'
#' @section Functions:
#' \describe{
#' \item{\code{\link{cpbayes_uncor}}}{It implements CPBayes for uncorrelated
#'  summary statistics. The summary statistics across traits/studies are uncorrelated when
#'   the studies have no overlapping subject.}
#' \item{\code{\link{cpbayes_cor}}}{It implements CPBayes for correlated summary
#'  statistics. The summary statistics across traits/studies are correlated when the studies
#'   have overlapping subjects or the phenotypes were measured in a cohort study.}
#' \item{\code{\link{post_summaries}}}{It summarizes the MCMC data produced by
#'  \code{\link{cpbayes_uncor}} or \code{\link{cpbayes_cor}}.
#'   It computes additional summaries to provide a better insight into a pleiotropic signal.
#'    It works in the same way for both \code{\link{cpbayes_uncor}} and \code{\link{cpbayes_cor}}.}
#' \item{\code{\link{forest_cpbayes}}}{It creates a forest plot presenting the pleiotropy result obtained by
#' \code{\link{cpbayes_uncor}} or \code{\link{cpbayes_cor}}. It works in the same way for
#'  both \code{\link{cpbayes_uncor}} and \code{\link{cpbayes_cor}}.}
#' \item{\code{\link{estimate_corln}}}{It computes an approximate correlation matrix of
#'  the beta-hat vector for multiple overlapping case-control studies using the
#'  sample-overlap matrices.}
#' }
#' @references Majumdar A, Haldar T, Bhattacharya S, Witte JS (2018) An efficient Bayesian meta analysis approach for studying cross-phenotype genetic associations. PLoS Genet 14(2): e1007139.
#'
#'
#' @docType package
#'
#' @name CPBayes
#'
#' @importFrom MASS mvrnorm
#' @importFrom stats runif rnorm rbeta quantile qchisq qbeta pchisq pbeta p.adjust dist aggregate sd qnorm
#' @importFrom forestplot forestplot fpColors
#' @importFrom grDevices dev.off pdf
NULL
