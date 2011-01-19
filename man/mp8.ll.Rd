\name{mp8.ll}
\Rdversion{1.1}
\alias{mp8.ll}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Binomial likelihood for a set of Heligman-Pollard Parameters
}
\description{
Calculates the log-likelihood based on a binomial distribution of observing a set of age-specific probabilities of death resulting from a set of eight parameters of the Heligman-Pollard Model given a certain number of age-specific death counts and persons at risk}
\usage{
mp8.ll(theta, nrisk, ndeath, age = c(1e-05, 1, seq(5, 85, 5)))
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{theta}{ A vector containing the values for the 8 Heligman-Pollard parameters }
  \item{nrisk}{ A vector containing the number of persons at risk in each age group}
  \item{ndeath}{ A vector containing the number of deaths in each age group }
  \item{age}{ A vector containing the age values of which the probabilities of death resulting from the HP model are a function }
}
%\details{
%%  ~~ If necessary, more details than the description above ~~
%}
\value{
Log likelihood of observing the resulting probabilities of death calculated from the set of parameters, \code{theta}
}
\references{
Heligman, Larry and John H. Pollard. 1980 "The Age Pattern of Mortality." \emph{Journal of the Institute of Actuaries} \bold{107}:49--80.
}
%\author{
%%  ~~who you are~~
%}
\note{
For use in the optimizer step of the IMIS procedure
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{loop.optim}}, \code{\link{hp.bm.imis}}
}
\examples{
%##---- Should be DIRECTLY executable !! ----
%##-- ==>  Define data, use random,
%##--	or do  help(data=index)  for the standard data sets.
##A set of parameters##
theta <- c(0.06008, 0.31087, 0.34431, 0.00698,
           1.98569, 26.71071, 0.00022, 1.08800)
##Deaths and persons at risk##
lx <- c(1974, 1906, 1860, 1844, 1834, 1823, 1793, 1700, 1549, 1361, 
1181, 1025, 870, 721, 571, 450, 344, 256, 142, 79, 41, 8)
dx <- c(68, 47, 16, 10, 13, 29, 92, 151, 188, 179, 156, 155, 147, 150, 
122, 106, 88, 113, 63, 38, 32, 8)
mp8.ll(theta=theta, nrisk=lx, ndeath=dx)

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ misc }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line