\name{pri.mle}
\Rdversion{1.1}
\alias{pri.mle}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Heligman-Pollard parameter prior formation for use with Bayesian Melding using IMIS
}
\description{
Forms a prior distribution (drawn from a uniform distribution) for each of the eight Heligman-Pollard parameters. First, using \code{optim()}, mle estimates of the parameters are fitted to the deaths and persons at risk supplied by the user. Once these estimates (returned as \code{mle}) and their standard errors (\code{se}) are obtained, 8000 (See documentation for \code{\link{prior.form}}) draws from a uniform distribution with bounds \code{mle[i] +/- senum*se} are taken to form a prior distribution for each parameter.
}
\usage{
pri.mle(nrisk, ndeath, age = c(0, 1, seq(5, 100, 5)), 
lo = c(1e-08, 1e-07, 1e-07, 1e-07, 1e-07, 15, 1e-07, 1), 
hi = c(1, 1, 1, 0.5, 15, 55, 0.1, 1.5), senum = 15, 
theta.test = c(0.06008, 0.31087, 0.34431, 0.00698, 1.98569,
26.71071, 0.00022, 1.088), opt.meth = "Nelder-Mead")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{nrisk}{
The number of persons at risk of death in each age group
}
  \item{ndeath}{
The number of deaths in each age group
}
  \item{age}{
A vector containing the ages at which probabilities of death are calculated
}
  \item{lo}{
If \code{opt.meth="L-BFGS"}, this vector contains the lower bounds in \code{lower} argument of \code{optim()} )
}
  \item{hi}{
If \code{opt.meth="L-BFGS"}, this vector contains the upper bounds in \code{upper} argument of \code{optim()} )
}
  \item{senum}{
The number of standard errors on each side of the mle estimate. This argument controls how wide or narrow the uniform distribution is from which the prior distribution will be drawn.
}
  \item{theta.test}{
Start values for optim. The defaults encompass the Brass standard (Rogers and McKnown 1989). 
}
  \item{opt.meth}{
The same as \code{method} in \code{opim()}. 
}
}
\details{
Priors drawn with this function can be used with the function \code{\link{hp.bm.imis}} or other functions from the HPbayes package.
}
\value{

\item{q0}{A matrix containing the prior distibution with each column corresponding to one of the Heligman-Pollard parameters}
\item{mle}{A vector containing the mle estimates. These define the center of each uniform from which the prior was drawn}
\item{se.out}{A vector containing the standard error for each element of \code{mle}}
\item{pri.lo}{The lower bounds on the uniform distributions from which the prior for each parameter is drawn}
\item{pri.hi}{The upper bounds on the uniform distributions from which the prior for each parameter is drawn}
}
\references{
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
\code{\link{hp.bm.imis}}, \code{\link{optim}}
}
\examples{
data(HPprior) ##loads a vector of persons at risk (lx) and deaths (dx)
prior <- pri.mle(nrisk=lx, ndeath=dx)
summary(prior$q0)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ misc }