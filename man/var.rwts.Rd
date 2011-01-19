\name{var.rwts}
\Rdversion{1.1}
\alias{var.rwts}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Variance of the rescaled weights when estimating the Heligman-Pollard parameters using Bayesian Melding with IMIS
}
\description{
  Calculates the variance of the rescaled weights}
\usage{
var.rwts(w)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{w}{ A vector of importance weights corresponding to each row of the mixture of the prior and multivariate gaussian draws }
}
%\details{
%%  ~~ If necessary, more details than the description above ~~
%}
\value{
A scalar representing the variance of the rescaled weights
}
\references{
Poole, David and Adrian Raftery. 2000. "Inference for Deterministic Simulation Models: The Bayesian Melding Approach." \emph{Journal of the American Statistical Association} \bold{95}:1244--1255.

Raftery, Adrian and Le Bao. 2009. "Estimating and Projecting Trends in HIV/AIDS Gen- eralized Epidemics Using Incremental Mixture Importance Sampling." Technical Report 560, Department of Statistics, University of Washington.
}
%\author{
%%  ~~who you are~~
%}
\note{
Used in the \code{\link{final.resamp}} function
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{final.resamp}}, \code{\link{hp.bm.imis}}
}
\examples{
%##---- Should be DIRECTLY executable !! ----
%##-- ==>  Define data, use random,
%##--	or do  help(data=index)  for the standard data sets.
#Generate a vector of weights#
wts <- runif(100, 0, .99)
var.rwts(wts)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ misc }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
