\name{hp.nqx}
\Rdversion{1.1}
\alias{hp.nqx}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Heligman-Pollard parameter conversion to age-specifc probabilites of death
}
\description{
  Converts a set of Heligman-Pollard mortality model parameters into age-specific probabilities of death
}
\usage{
hp.nqx(H.out, age = seq(0, 85, 1))
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{H.out}{ A vector of length eight containing the values for the eight parameters of the model }
  \item{age}{ A vector containing the ages at which the probability of death will be calculated }
}
%\details{
%%  ~~ If necessary, more details than the description above ~~
%}
\value{
Set of age specific probabilities of death equal to the length of \code{age}
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
\code{\link{hp.lifetab}}
}
\examples{
%##---- Should be DIRECTLY executable !! ----
%##-- ==>  Define data, use random,
%##--	or do  help(data=index)  for the standard data sets.
theta <- cbind(0.06008, 0.31087, 0.34431, 0.00698,
           1.98569, 26.71071, 0.00022, 1.08800)
nqx <- hp.nqx(H.out=theta)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ misc }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
