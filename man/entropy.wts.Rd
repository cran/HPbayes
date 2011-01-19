\name{entropy.wts}
\Rdversion{1.1}
\alias{entropy.wts}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Entropy of the rescaled weights relative to uniformity
}
\description{
Performance measure for the IMIS algorithm that calculates the entropy of the importance weights relative to uniformity.
}
\usage{
entropy.wts(w)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{w}{ A vector of importance weights corresponding to each row of the mixture of the prior and multivariate gaussian draws  }
}
%\details{
%For use in the function hp.bm.imis
%}
\value{
Vector of entropy values relative to uniformity for a vector of weights
}
\references{
Raftery, Adrian and Le Bao. 2009. "Estimating and Projecting Trends in HIV/AIDS Gen- eralized Epidemics Using Incremental Mixture Importance Sampling." Technical Report 560, Department of Statistics, University of Washington.

Poole, David and Adrian Raftery. 2000. "Inference for Deterministic Simulation Models: The Bayesian Melding Approach." \emph{Journal of the American Statistical Association} \bold{95}:1244--1255. 
}
%\author{
%%  ~~who you are~~
%}
\note{
For use in the function \code{\link{final.resamp}} from the package \code{HPbayes}
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

%\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
%}
\examples{
%##---- Should be DIRECTLY executable !! ----
%##-- ==>  Define data, use random,
%##--	or do  help(data=index)  for the standard data sets.
#Generate a vector of weights#
wts <- runif(100, 0, .99)
entropy.wts(w=wts)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ misc }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
