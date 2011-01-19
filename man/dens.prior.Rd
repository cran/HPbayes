\name{dens.prior}
\Rdversion{1.1}
\alias{dens.prior}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Density of the prior
}
\description{
This function calculates the density of the prior distribution for the eight parameters of the Heligman Pollard model.  The density is calculated using a uniform distribution.  The lower bounds all default to 0 except parameter F, which has a default lower bound of 15.  The upper bounds default to A-0.15, B-1, C-1, D-0.25, E-15, F-55, G-0.1, F-1.25.
}
\usage{
dens.prior(x, pri.lo = c(0, 0, 0, 0, 0, 15, 0, 0), 
pri.hi = c(0.15, 1, 1, 0.25, 15, 55, 0.1, 1.25))
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{ A 1 x 8 vector or n x 8 matrix containing values for the eight Heligman-Pollard Parameters }
  \item{pri.lo}{ A vector giving the lower bounds of the uniform prior. Defaults to 0 for all parameters except F which has a default lower bound of 15. }
  \item{pri.hi}{ A vector giving the upper bounds of the uniform prior. Defaults to A-0.15, B-1, C-1, D-0.25, E-15, F-55, G-0.1, F-1.25. }
}
%\details{
%%  ~~ If necessary, more details than the description above ~~
%}
\value{
A scalar describing the density of the prior distribution
}
%\references{
%% ~put references to the literature/web site here ~
%}
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
#Generate a prior distribution
pri.lo = c(0, 0, 0, 0, 0, 15, 0, 0)
pri.hi = c(0.15, 1, 1, 0.25, 15, 55, 0.1, 1.25)
B0 <- 8000
q0 <- cbind(runif(B0, pri.lo[1], pri.hi[1]), 
runif(B0, pri.lo[2], pri.hi[2]), 
runif(B0, pri.lo[3], pri.hi[3]), 
runif(B0, pri.lo[4], pri.hi[4]), 
runif(B0, pri.lo[5], pri.hi[5]), 
runif(B0, pri.lo[6], pri.hi[6]), 
runif(B0, pri.lo[7], pri.hi[7]), 
runif(B0, pri.lo[8], pri.hi[8]))

density <- dens.prior(x=q0)

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ misc }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line