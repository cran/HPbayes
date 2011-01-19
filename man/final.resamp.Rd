\name{final.resamp}
\Rdversion{1.1}
\alias{final.resamp}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Final re-sampling step in Bayesian Melding using IMIS
}
\description{
Performs the final re-sampling step in the Bayesian Melding with IMIS procedure for the eight Heligman-Pollard parameters. 
}
\usage{
final.resamp(K, B1, H.new, H.k, log.like, d.keep, prior, h.mu, h.sig, 
    nrisk, ndeath, B = 400, theta.dim = 8, age = c(1e-05, 1, 
        seq(5, 100, 5))) 
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{K}{ The number of iterations of the importance sampling stage }
  \item{B1}{ sample size at the importance sampling stage multiplied by the number of local optimums }
  \item{H.new}{ A matrix  with dimensions (B*d.keep) x 8 containing the B*d.keep inputs drawn from the multivariate gaussians}
  \item{H.k}{ A matrix containing the prior plus new inputs from the multivariate gaussians}
  \item{log.like}{ A vector of log-likelihoods corresponding to each row of H.k }
  \item{d.keep}{ The number of local optimums found in the optimizer step }
  \item{prior}{ A matrix containing the prior }
  \item{h.mu}{ A d.keep x 8 matrix containing the results of the optimizer step}
  \item{h.sig}{ An array containing the covariance matrix for each row of h.mu}
  \item{nrisk}{A vector containing the number of persons at risk in each age group}
  \item{ndeath}{ A vector containing the number of deaths in each age group }
  \item{B}{ sample size at the importance sampling stage }
  \item{theta.dim}{ The number of columns of the prior matrix }
  \item{age}{A vector containing the ages at which each age interval begins }
}
\details{
The function, hp.bm.imis, will perform this along with all other steps in a single function
}
\value{
  \item{H.new}{A \code{B} x \code{theta.dim} matrix containing the posterior distribution for each parameter}
  \item{vwts}{A vector containing the variance of the rescaled weights at each IMIS iteration}
  \item{ewts}{A vector containing the entropy of the rescaled weights at each IMIS iteration}
  \item{mwts}{A vector containing the maximum of the rescaled weights at each IMIS iteration}
  \item{nup}{A vector containing the expected number of unique points at each IMIS iteration}
  \item{frac.up}{A vector containing the proportion of unique points in the final resample at each IMIS iteration}
  \item{wts.k}{A vector containing the importance weights for the final iteration}
  \item{mwt.case}{The maximum weight value and associated case}
  }
\references{
Raftery, Adrian and Le Bao. 2009. "Estimating and Projecting Trends in HIV/AIDS Gen- eralized Epidemics Using Incremental Mixture Importance Sampling." Technical Report 560, Department of Statistics, University of Washington.

Poole, David and Adrian Raftery. 2000. "Inference for Deterministic Simulation Models: The Bayesian Melding Approach." \emph{Journal of the American Statistical Association} \bold{95}:1244--1255.

Heligman, Larry and John H. Pollard. 1980 "The Age Pattern of Mortality." \emph{Journal of the Institute of Actuaries} \bold{107}:49--80.
}
%\author{
%%  ~~who you are~~
%}
%\note{
%%  ~~further notes~~
%}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{loop.optim}}, \code{\link{samp.postopt}}, \code{\link{like.resamp}}, \code{\link{hp.bm.imis}}, \code{\link{entropy.wts}}, \code{\link{expt.upts}}, \code{\link{var.rwts}} 
}
\examples{

\dontrun{
data(HPprior)
lx
dx
summary(q0)
age


opt.result <- loop.optim(prior = q0, nrisk=lx, ndeath=dx)
    opt.mu.d <- opt.result$opt.mu.d
    opt.cov.d <- opt.result$opt.cov.d
    theta.new <- opt.result$theta.new
    d.keep <- opt.result$d.keep
    log.like.0 <- opt.result$log.like.0
    wts.0 <- opt.result$wts.0
samp.po <- samp.postopt(opt.cov.d = opt.cov.d, opt.mu.d = opt.mu.d, 
        prior = q0, d.keep = d.keep)
    H.k <- samp.po$H.k
    H.new <- samp.po$H.new
    B1 <- samp.po$B1
ll.postopt <- like.resamp(K = 10, log.like.0 = log.like.0, 
        opt.cov.d = opt.cov.d, opt.mu.d = opt.mu.d, d.keep = d.keep)
    h.mu <- ll.postopt$h.mu
    h.sig <- ll.postopt$h.sig
    log.like <- ll.postopt$log.like
    K <- ll.postopt$K
result <- final.resamp(K = K, B1 = B1, H.new = H.new, H.k = H.k, 
        log.like = log.like, d.keep = d.keep, prior = q0, 
        h.mu = h.mu, h.sig = h.sig, nrisk=lx, ndeath=dx, age=age)
        }

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ misc }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line