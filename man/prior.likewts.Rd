\name{prior.likewts}
\Rdversion{1.1}
\alias{prior.likewts}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Prior likelihoods and weights
}
\description{
  Calculates the log-likelihood and importance weight for each set (i.e. each row) of Heligman-Pollard parameters in the prior}
\usage{
prior.likewts(prior, nrisk, ndeath, theta.dim = 8, 
age = c(1e-05, 1, seq(5, 100, 5)))
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{prior}{ A (\code{theta.dim}*1000) x theta.dim matrix containing the prior distribution}
  \item{nrisk}{A vector containing the number of persons at risk in each age group}
  \item{ndeath}{ A vector containing the number of deaths in each age group }
  \item{theta.dim}{ Number of columns of the prior matrix. Defaults to 8 }
  \item{age}{A vector containing the ages at which each age interval begins }
}
%\details{
%%  ~~ If necessary, more details than the description above ~~
%}
\value{
  \item{wts.0 }{A vector containing an importance weight for each set of parameters from the prior}
  \item{log.ilke.0 }{A vector containing a log likelihood for each set of parameters from the prior}
}
\references{
Heligman, Larry and John H. Pollard. 1980 "The Age Pattern of Mortality." \emph{Journal of the Institute of Actuaries} \bold{107}:49--80.
	
Poole, David and Adrian Raftery. 2000. "Inference for Deterministic Simulation Models: The Bayesian Melding Approach." \emph{Journal of the American Statistical Association} \bold{95}:1244--1255.

Raftery, Adrian and Le Bao. 2009. "Estimating and Projecting Trends in HIV/AIDS Gen- eralized Epidemics Using Incremental Mixture Importance Sampling." Technical Report 560, Department of Statistics, University of Washington.
}
%\author{
%%  ~~who you are~~
%}
\note{
Used in the \code{\link{loop.optim}} function
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{loop.optim}}, \code{\link{hp.bm.imis}}
}
\examples{
%##---- Should be DIRECTLY executable !! ----
%##-- ==>  Define data, use random,
%##--	or do  help(data=index)  for the standard data sets.
lx <- c(1974, 1906, 1860, 1844, 1834, 1823, 1793, 1700, 1549, 1361, 
1181, 1025, 870, 721, 571, 450, 344, 256, 142, 79, 41, 8)
dx <- c(68, 47, 16, 10, 13, 29, 92, 151, 188, 179, 156, 155, 147, 150, 
122, 106, 88, 113, 63, 38, 32, 8)
age <- c(1e-05, 1, seq(5, 85, 5))
q0 <- prior.form()
result <- prior.likewts(prior=q0, nrisk=lx, ndeath=dx, age=age)
summary(result$wts.0)
summary(result$log.like.0)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ misc }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
