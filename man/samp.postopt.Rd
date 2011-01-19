\name{samp.postopt}
\Rdversion{1.1}
\alias{samp.postopt}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Multivariate Gaussian Sampling for Heligman-Pollard model estimated via Bayesian Melding
}
\description{
  Samples the eight Heligman-Pollard parameters from the mvnorm distribution for each run of optimizer step where the likelihood for that run exceeds the maximum likelihood from the prior}
\usage{
samp.postopt(opt.cov.d, opt.mu.d,  d.keep, prior, B = 400, 
B0 = 8000, d = 10)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{opt.cov.d}{ An array containing a covariance matrix for each run of optimizer where the likelihood for that run exceeds the maximum likelihood from the prior  }
  \item{opt.mu.d}{ A matrix containing the results of the optimizer step }
  \item{d.keep}{ Number of runs of optimizer where the likelihood for that run exceeds the maximum likelihood from the prior }
  \item{prior}{ A matrix containing the prior distribution (see prior.form and prior.mle)}
  \item{B}{ sample size at the importance sampling stage }
  \item{B0}{ Sample size of the prior. This is equal to \code{theta.dim*1000} }
  \item{d}{ Number of optimizer iterations }
}
\details{
For use within the function \code{\link{hp.bm.imis}}
}
\value{
  \item{H.k}{The prior plus new samples }
  \item{H.new}{The new samples from the multivariate normal}
  \item{B1}{The number of new samples - should be equal to \code{B*d.keep} }
}
\references{
Heligman, Larry and John H. Pollard. 1980 "The Age Pattern of Mortality." \emph{Journal of the Institute of Actuaries} \bold{107}:49--80.

Poole, David and Adrian Raftery. 2000. "Inference for Deterministic Simulation Models: The Bayesian Melding Approach." \emph{Journal of the American Statistical Association} \bold{95}:1244--1255.

Raftery, Adrian and Le Bao. 2009. "Estimating and Projecting Trends in HIV/AIDS Gen- eralized Epidemics Using Incremental Mixture Importance Sampling." Technical Report 560, Department of Statistics, University of Washington.
}
%\author{
%%  ~~who you are~~
%}
%\note{
%%  ~~further notes~~
%}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
hp.bm.imis
}
\examples{
%##---- Should be DIRECTLY executable !! ----
%##-- ==>  Define data, use random,
%##--	or do  help(data=index)  for the standard data sets.
\dontrun{data(HPprior)
q0 <- HPprior
lx <- c(1974, 1906, 1860, 1844, 1834, 1823, 1793, 1700, 1549, 1361, 
1181, 1025, 870, 721, 571, 450, 344, 256, 142, 79, 41, 8)
dx <- c(68, 47, 16, 10, 13, 29, 92, 151, 188, 179, 156, 155, 147, 150, 
122, 106, 88, 113, 63, 38, 32, 8)
opt.result <- loop.optim(prior = q0, nrisk=lx, ndeath=dx)
    opt.mu.d <- opt.result$opt.mu.d
    opt.cov.d <- opt.result$opt.cov.d
    theta.new <- opt.result$theta.new
    d.keep <- opt.result$d.keep
    log.like.0 <- opt.result$log.like.0
    wts.0 <- opt.result$log.like.0
samp.po <- samp.postopt(opt.cov.d = opt.cov.d, opt.mu.d = opt.mu.d, 
        prior = q0, d.keep = d.keep)}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ misc }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
