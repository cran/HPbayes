\name{HPbayes-package}
\Rdversion{1.1}
\alias{HPbayes-package}
\alias{HPbayes}
\docType{package}
\title{
Heligman Pollard mortality model parameter estimation using Bayesian Melding with Incremental Mixture Importance Sampling
}
\description{
This package provides all the functions necessary to estimate the 8 parameters of the Heligman-Pollard mortality model using Bayesian Melding with IMIS and optimization. Functions are also provided to estimate the model using maximum likelihood and to plot the results of either ML or BM with IMIS.
}
\details{
\tabular{ll}{
Package: \tab HPbayes\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2009-05-06\cr
License: \tab \cr
LazyLoad: \tab yes\cr
}
\code{\link{hp.bm.imis}} is the most central function in the package. This single function combines all the necessary functions to execute the parameter estimation via Bayesian Melding using Incremental Mixture Importance Sampling with optimization. Once the parameter estimates are obtained \code{\link{hp.nqx}} can be used to convert the parameter estimates into probabilities of death for all x > 0. Likewise, \code{\link{hp.lifetab}} will convert the parameter estimates into a life table with age groups selected by the user. Plotting functions include \code{\link{hpbayes.plot}}, which will plot the resulting output from the deterministic model along with confidence intervals, and \code{\link{postpri.plot}}, which will plot the resulting posterior parameter distributions along with the prior for each. 
}
\author{
Dave Sharrow with code from Jason Thomas

Maintainer: Dave Sharrow <dsharrow@u.washington.edu>
}
\references{
Heligman, Larry and John H. Pollard. 1980 "The Age Pattern of Mortality." \emph{Journal of the Institute of Actuaries} \bold{107}:49--80.

Poole, David and Adrian Raftery. 2000. "Inference for Deterministic Simulation Models: The Bayesian Melding Approach." \emph{Journal of the American Statistical Association} \bold{95}:1244--1255.

Raftery, Adrian and Le Bao. 2009. "Estimating and Projecting Trends in HIV/AIDS Gen- eralized Epidemics Using Incremental Mixture Importance Sampling." Technical Report 560, Department of Statistics, University of Washington.
}
%~~ Optionally other standard keywords, one per line, from file ~~
%~~ KEYWORDS in the R documentation directory ~~
\keyword{ package }
%\seealso{
%~~ Optional links to other man pages, e.g. ~~
%~~ \code{\link[<pkg>:<pkg>-package]{<pkg>}} ~~
%}
%\examples{
%##Generate a prior##
%q0 <- prior.form()
%##number of deaths in each age group##
%dx <- c(68, 47, 16, 10, 13, 29, 92, 151, 188, 179, 156, 155, 147, 150, %122, 106, 88, 113, 63, 38, 32, 8)
%##number at risk in each age group##
%lx <- c(1974, 1906, 1860, 1844, 1834, 1823, 1793, 1700, 1549, 1361, 1181, %1025, 870, 721, 571, 450, 344, 256, 142, 79, 41, 8)
%result <- hp.bm.imis(prior=q0, K=10, nrisk=lx, ndeath=dx) 
%}