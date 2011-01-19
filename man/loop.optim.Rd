\name{loop.optim}
\Rdversion{1.1}
\alias{loop.optim}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
 Optimizer step for estimating the Heligman-Pollard Parameters using the Bayesian Melding with IMIS-opt procedure
}
\description{
  Performs the optimizer step in the IMIS procedure for the eight Heligman-Pollard parameters}
\usage{
loop.optim(prior, nrisk, ndeath, d = 10, theta.dim = 8, 
age = c(1e-05, 1, seq(5, 100, 5)))
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{prior}{ A matrix containing the prior }
  \item{nrisk}{A vector containing the number of persons at risk in each age group}
  \item{ndeath}{ A vector containing the number of deaths in each age group }
  \item{d}{ Number of optimizer iterations }
  \item{theta.dim}{ Number of columns of the prior (This should be 8 if estimating all parameters. Functionality for estimation a limited number of parameters does not exist yet.)}
  \item{age}{A vector containing the ages at which each age interval begins }
}
%\details{
%%  ~~ If necessary, more details than the description above ~~
%}
\value{
  \item{opt.mu.d}{A matrix containing the local optimums resulting from the optimizer step. Each local optimum contains a set of 8 parameter values.}
  \item{opt.cov.d}{A array containing the covariance matrix for each of the local optimums}
  \item{d.keep}{The number of local optimums found whose likelihood is greater than the maximum likelihood from the prior}
  \item{theta.new}{The set of parameters from the prior with the greatest weight as calculated with prior.likewts}
 \item{log.like.0}{A vector containing a likelihood for each row of the prior}
 \item{wts.0}{A vector containing an importance weight for each row of the prior}
}
\references{
Poole, David and Adrian Raftery. 2000. "Inference for Deterministic Simulation Models: The Bayesian Melding Approach." \emph{Journal of the American Statistical Association} \bold{95}:1244--1255.

Raftery, Adrian and Le Bao. 2009. "Estimating and Projecting Trends in HIV/AIDS Gen- eralized Epidemics Using Incremental Mixture Importance Sampling." Technical Report 560, Department of Statistics, University of Washington.
}
%\author{
%%  ~~who you are~~
%}
\note{
Occasionally, this step fails to produce an initial local maximum that exceeds the highest likelihood of the prior and a warning is issued. Usually drawing a new prior or selecting a different algorithm solves this  problem.
}

%% ~Make other sections like Warning with 

\section{Warning }{If the likelihood for the initial local maximum does not exceed the highlest likelihood from the prior, a warning will be issued.}

\seealso{
\code{\link{hp.bm.imis}}
}

\examples{
#Generate a prior and numbers of death and persons at risk#
\dontrun{q0 <- prior.form()
lx <- c(1974, 1906, 1860, 1844, 1834, 1823, 1793, 1700, 1549, 1361, 
1181, 1025, 870, 721, 571, 450, 344, 256, 142, 79, 41, 8)
dx <- c(68, 47, 16, 10, 13, 29, 92, 151, 188, 179, 156, 155, 147, 150, 
122, 106, 88, 113, 63, 38, 32, 8)
opt.result <- loop.optim(prior=q0, nrisk=lx, ndeath=dx)}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ misc }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line