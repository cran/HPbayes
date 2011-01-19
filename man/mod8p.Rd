\name{mod8p}
\Rdversion{1.1}
\alias{mod8p}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Heligman-Pollard parameter coversion to age-specific probabilites of death
}
\description{
  Calculates the age-specific probabilities of death using the Heligman-Pollard model}
\usage{
mod8p(theta, x)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{theta}{ A vector containing values for the 8 parameters of the Heligman-Pollard model }
  \item{x}{ A vector containing the ages at which to calculate the probabilities of death }
}
%\details{
%%  ~~ If necessary, more details than the description above ~~
%}
\value{
A vector of probabilities of death at ages defined by \code{x}
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
theta <- c(0.06008, 0.31087, 0.34431, 0.00698,
           1.98569, 26.71071, 0.00022, 1.08800)
age <- c(0.00001, 1, seq(5, 85, 5))
result <- mod8p(theta=theta, x=age)

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ misc }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line