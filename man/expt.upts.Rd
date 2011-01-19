\name{expt.upts}
\Rdversion{1.1}
\alias{expt.upts}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Expected number of unique inputs after the final IMIS re-sample
}
\description{
Performance measure for the IMIS algorithm that calculates the expected number of unique points after re-sampling}
\usage{
expt.upts(w, m)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{w}{ A vector of importance weights corresponding to each row of the mixture of the prior and multivariate gaussian distributions}
  \item{m}{The final re-sample size}
}
%\details{
%%  ~~ If necessary, more details than the description above ~~
%}
\value{
A scalar describing the number of unique points from the final re-sample
}
\references{
Raftery, Adrian and Le Bao. 2009. "Estimating and Projecting Trends in HIV/AIDS Gen- eralized Epidemics Using Incremental Mixture Importance Sampling." Technical Report 560, Department of Statistics, University of Washington. 
}
%\author{
%%  ~~who you are~~
%}
\note{
For use in the function \code{\link{final.resamp}}
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
expt.upts(wts, m = 3000)

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ misc }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line