\name{ll.binom}
\Rdversion{1.1}
\alias{ll.binom}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Binomial likelihood
}
\description{
Calculates a log likelihood from a binomial distribution
}
\usage{
ll.binom(x, n, p)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{ Same as \code{x} from \code{dbinom} - successes}
  \item{n}{ Same as \code{size} from \code{dbinom} - trials }
  \item{p}{ Same as \code{prob} from \code{dbinom} - observed probability }
}
%\details{
%%  ~~ If necessary, more details than the description above ~~
%}
\value{
Log-Likelihood based on a binomial distribution
}
\references{
R Development Core Team. 2009. "R: A Language and Environment for Statistical Computing" \emph{R Foundation for Statistical Computing} Vienna, Austria.}
%\author{
%%  ~~who you are~~
%}
%\note{
%%  ~~further notes~~
%}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{dbinom}}
}
\examples{
%##---- Should be DIRECTLY executable !! ----
%##-- ==>  Define data, use random,
%##--	or do  help(data=index)  for the standard data sets.
ll.binom(x=1, n=2, p=0.5)

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ misc }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
