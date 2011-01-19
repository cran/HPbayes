\name{hp.bm.imis}
\Rdversion{1.1}
\alias{hp.bm.imis}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Heligman-Pollard parameter estimator using Bayesian Melding with Incremental Mixture Importance Sampling
}
\description{
Runs all the necessary functions to estimate the eight Heligman-Pollard parameters in one step via Bayesian Melding with IMIS and optimization. In this order and with the proper arguments imputed the functions run are \code{\link{loop.optim}}, \code{\link{samp.postopt}}, \code{\link{like.resamp}}, \code{\link{final.resamp}}. 
}
\usage{
hp.bm.imis(prior, nrisk, ndeath, K, d = 10, 
B = 400,  age = c(1e-05, 1, seq(5, 100, 5)), CI=95)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{prior}{A matrix with dimensions 8000 x \code{theta.dim} containing the prior distribution for each Heligman-Pollard parameter}
  \item{nrisk}{A vector containing the total number of individuals at risk of death in each age group. Length should equal the length of \code{age} }
  \item{ndeath}{A vector containing the total number of deaths in each age group. Length should equal the length of \code{age} } 
  \item{K}{ The number of IMIS iterations }
  \item{d}{ The number of optimizer iterations }
  \item{B}{ The sample size at each importance sampling iteration }
  \item{age}{ A vector of the ages at which the probabilities of death will be calculated }
  \item{CI}{Defines the width of the credible interval (Defaults to 95 percent). A summary table is printed with the median estimate and lower and upper confidence bounds. Setting \code{CI}=95 prints a table with the first column representing the 2.5th percentile for each parameter distribution, the second column represents the median value for each parameter distribution and the third column represents the 97.5th percentile for each parameter distribution. }
}
%\details{
%%  ~~ If necessary, more details than the description above ~~
%}
\value{
	\item{out}{A summary table of the results with the median parameter values in the middle column, the lower bound results in the left column, and upper bound result in the right column}
  \item{H.final}{A \code{B} x \code{theta.dim} matrix containing the posterior distribution for each parameter}
  \item{h.mu}{The sets of parameters found in the optimizer step}
 \item{h.sig}{The covariance matrix for each set of parameters in \code{h.mu}}
 \item{log.like}{A vector of likelihoods for the prior plus resamples}
 \item{log.like.0}{A vector of the likelihoods for the prior}
 \item{wts.0}{A vector of importance weights for each set of parameters in the prior}
 \item{d.keep}{The number of optimizer runs where the likelihood exceeded the maximum likelihood of the prior}
  \item{vwts}{A vector containing the variance of the rescaled weights at each IMIS iteration}
  \item{ewts}{A vector containing the entropy of the rescaled weights at each IMIS iteration}
  \item{mwts}{A vector containing the maximum of the rescaled weights at each IMIS iteration}
  \item{mwt.case}{The maximum weight and associated case}
  \item{nup}{A vector containing the expected number of unique points at each IMIS iteration}
  \item{frac.up}{A vector containing the proportion of unique points in the final resample at each IMIS iteration}
  \item{wts.k}{A vector containing the importance weights for the final IMIS iteration}
}
\references{
Heligman, Larry and John H. Pollard. 1980 "The Age Pattern of Mortality." \emph{Journal of the Institute of Actuaries} \bold{107}:49--80.

Poole, David and Adrian Raftery. 2000. "Inference for Deterministic Simulation Models: The Bayesian Melding Approach." \emph{Journal of the American Statistical Association} \bold{95}:1244--1255.

Raftery, Adrian and Le Bao. 2009. "Estimating and Projecting Trends in HIV/AIDS Generalized Epidemics Using Incremental Mixture Importance Sampling." Technical Report 560, Department of Statistics, University of Washington.
}
%\author{
%%  ~~who you are~~
%}
\note{Because there are multiple sampling steps sometimes with upper and lower bound restricitions, this function can take several minutes to run depending on the sample size, \code{K}}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{loop.optim}}, \code{\link{samp.postopt}}, \code{\link{like.resamp}}, \code{\link{final.resamp}}
}
\examples{
%##---- Should be DIRECTLY executable !! ----
%##-- ==>  Define data, use random,
%##--	or do  help(data=index)  for the standard data sets.
##a prior##
\dontrun{data(HPprior)
q0 <- HPprior
##number of deaths in each age group##
dx <- c(68, 47, 16, 10, 13, 29, 92, 151, 188, 179, 156, 155, 147, 150, 
122, 106, 88, 113, 63, 38, 32, 8)
##number at risk in each age group##
lx <- c(1974, 1906, 1860, 1844, 1834, 1823, 1793, 1700, 1549, 1361, 
1181, 1025, 870, 721, 571, 450, 344, 256, 142, 79, 41, 8)
result <- hp.bm.imis(prior=q0, K=10, nrisk=lx, ndeath=dx) }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ misc }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
