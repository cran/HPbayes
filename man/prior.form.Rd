\name{prior.form}
\Rdversion{1.1}
\alias{prior.form}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Heligman-Pollard parameter prior formation
}
\description{
  Draws from a uniform distribution with bounds \code{pri.lo} and \code{pri.hi} to create the prior distribution of the Heligman-Pollard parameters necessary for the Bayesian Melding procedure}
\usage{
prior.form(pri.lo = c(0, 0, 0, 0, 0, 15, 0, 0), 
pri.hi = c(0.15, 1, 1, 0.25, 15, 55, 0.1, 1.25), theta.dim = 8)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{pri.lo}{ Lower bound of the uniform from which the prior is drawn. Defaults to  pri.lo = c(0, 0, 0, 0, 0, 15, 0, 0)}
  \item{pri.hi}{ Upper bound of the uniform from which the prior is drawn.
Defaults to  pri.hi = c(0.15, 1, 1, 0.25, 15, 55, 0.1, 1.25)}
  \item{theta.dim}{ The number of parameters to be estimated. Defaults to 8 }
}
%\details{
%%  ~~ If necessary, more details than the description above ~~
%}
\value{
A (1000*\code{theta.dim}) x \code{theta.dim} matrix containing the 1000*\code{theta.dim} sets of the Heligman-Pollard parameters drawn from a uniform distribution
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

%\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
%}
\examples{
%##---- Should be DIRECTLY executable !! ----
%##-- ==>  Define data, use random,
%##--	or do  help(data=index)  for the standard data sets.
q0 <- prior.form()
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ misc }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line