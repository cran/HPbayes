\name{hp.lifetab}
\Rdversion{1.1}
\alias{hp.lifetab}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Heligman-Pollard life table conversion}
\description{
Generates a life table from the age-specific probabilities of death resulting from the estimation of the eight parameters of the Heligman-Pollard mortality model
}
\usage{
hp.lifetab(hpp, nax, age = seq(0, 85, 1), l0 = 1e+05, 
with.CI=FALSE, CI=95)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{hpp}{ A vector of lenght 8 containing the Heligman-Pollard model parameter values }
  \item{nax}{ A vector of equal length to \code{age} containing the appropriate nax values for each age interval in the life table }
  \item{age}{ A vector containing the ages at which to estimate the life table columns }
  \item{l0}{ The radix of the life table (Defaults to 100,000) }
  \item{with.CI}{ Logical. If TRUE, produces two additional life tables each generated from the lower CI bound values of nqx and the upper bound values of nqx respectively }
  \item{CI}{ Defines the width of the confidence interval. A value of \code{CI}=95 creates a 95 percent confidence interval with the upper bound defined as the 97.5th percentile nqx value for each age and the lower bound defined as the 2.5th percentile.}
}
%\details{
%%  ~~ If necessary, more details than the description above ~~
%}
\value{
A life table containing the columns "Age" (the starting age of the interval), "nax" (the set of nax values passed as an argument), "nqx" (the age-specific probabilites of dying in the interval x to x+n), "npx" (the probability of surviving the interval age x to x+n or 1-npx), "ndx" (the number of deaths in the interval), "lx" (the number of persons who have survived up to age x), "nLx" (the total number of person years lived within the interval x to x+n), "Tx" (the total number of person years left to live above age x+n), "ex" (life epectancy at age x).
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

%\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
%}
\examples{
%##---- Should be DIRECTLY executable !! ----
%##-- ==>  Define data, use random,
%##--	or do  help(data=index)  for the standard data sets.
##requires a set of Heligman-Pollard parameters##
theta <- cbind(0.06008, 0.31087, 0.34431, 0.00698,
           1.98569, 26.71071, 0.00022, 1.08800)
age <- seq(0, 85, 1)
nax <- rep(.5, length(age))
HP.lt <- hp.lifetab(hpp=theta, nax=nax)

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ misc }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
