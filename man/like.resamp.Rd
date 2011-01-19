\name{like.resamp}
\Rdversion{1.1}
\alias{like.resamp}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Local Optimums and Covariance from the optimizer step}
\description{
  Defines some necessary arguments for the function \code{\link{final.resamp}}. Removes NAs from the \code{opt.mu.d} and \code{opt.cov.d} matrixes.
}
\usage{
like.resamp(K, log.like.0,  opt.cov.d, opt.mu.d, d.keep, 
d = 10, theta.dim = 8)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{K}{ Number of iterations at the importance sampling stage}
  \item{log.like.0}{A vector containing the likelihoods for each row of the prior }
  \item{opt.cov.d}{ Covariance matrixes for the local optimums }
  \item{opt.mu.d}{A \code{d} x 8 matrix containing the local optimums (sets of parameters from the optimizer step) }
  \item{d.keep}{ Number of local optimums found  in the optimizer step}
  \item{d}{A scalar defining the number of optimizer interations. Defaults to 10 }
  \item{theta.dim}{ Number of columns in the prior matrix }
  }
%\details{
%}
\value{
  \item{h.mu}{A \code{d.keep} x 8 matrix containing the local optimum results }
  \item{h.sig }{An array with \code{theta.dim} x \code{theta.dim} x (\code{K+d.keep}) dimensions containing the covariance matrix for each local optimum}
  \item{log.like}{A vector of likelihoods for each row of H.k}
}
\references{
Poole, David and Adrian Raftery. 2000. "Inference for Deterministic Simulation Models: The Bayesian Melding Approach." \emph{Journal of the American Statistical Association} \bold{95}:1244--1255.

Raftery, Adrian and Le Bao. 2009. "Estimating and Projecting Trends in HIV/AIDS Gen- eralized Epidemics Using Incremental Mixture Importance Sampling." Technical Report 560, Department of Statistics, University of Washington.
}
%\author{
%%  ~~who you are~~
%}
\note{
Typically for use immediately before running \code{\link{final.resamp}} or within the function \code{\link{hp.bm.imis}}
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{final.resamp}}, \code{\link{hp.bm.imis}}
}
%\examples{
%##---- Should be DIRECTLY executable !! ----
%##-- ==>  Define data, use random,
%##--	or do  help(data=index)  for the standard data sets.
%}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ misc }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line