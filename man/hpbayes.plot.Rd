\name{hpbayes.plot}
\Rdversion{1.1}
\alias{hpbayes.plot}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Bayesian Melding posterior Heligman-Pollard parameter distribution plot 
}
\description{
This function converts the posterior Heligman-Pollard parameter distribution resulting from a Bayesian Melding procedure to probabilities of death over a specified age range. In addition, this function also calculates and plots a CI over the specified age range. The user can also elect to plot the data (\code{ndeath}/\code{nrisk}) from which the model was estimated. 
}
\usage{
hpbayes.plot(..., nrisk = NULL, ndeath = NULL, age, hpp, 
yrange = c(0, 0.8), xrange = c(0, 85), log = FALSE, plotdata = FALSE, 
plotpost= TRUE, data.type="b", post.type="l", 
line.col=c("grey", "blue", "red", "dark green"), CI=95)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
\item{...}{Arguments to be passes to \code{\link{par}}}
  \item{nrisk}{ A vector containing the number of persons at risk at age x }
  \item{ndeath}{ A vector containing the number of deaths at age x }
  \item{age}{ A vector containing the ages at which the probabilities of death will be calculated and plotted }
  \item{hpp}{ A matrix containing the posterior distribution of Heligman-Pollard parameters resulting from the Bayesian Melding procedure }
  \item{yrange}{ Same as ylim in \code{plot()} }
  \item{xrange}{ Same as xlim in \code{plot()} }
  \item{log}{ Logical. If TRUE the data will be converted and plotted on the log scale }
  \item{plotdata}{Logical. If TRUE the data (\code{ndeath}/\code{nrisk}) will be plotted as well.}
  \item{plotpost}{Logical. If TRUE the posterior output will be plotted.}
  \item{data.type}{Same as \code{type} in plot. }
  \item{post.type}{Same as \code{type} in plot. Defines the "type" for plotting the posterior age-specific probabilities of death}
  \item{line.col}{A vector of length four containing either numbers or strings describing the colors of the plot. In order, the vector elements control the color of the posterior output lines (defaults to "grey"), the color of the median line representing the median probability of death at each age (defaults to "blue"), the color of the two lines representing the upper and lower credible interval bounds (defaults to "red"), and the final element in this vector controls the color of the data points if they are plotted (defaults to "dark green").}
  \item{CI}{Defines the width of the credible interval if plotted (defaults to 95 percent). Setting \code{CI=95} for example will plot two lines representing the upper and lower bounds of the confidence interval with the upper bound line representing the 97.5th percentile for each age and the lower bound representing the 2.5th percentile for each age.}
}
\details{
If plotdata is TRUE, the user will need to supply the persons at risk at each age x and the number of deaths at age x with the arguments \code{nrisk} and \code{ndeath} respectively. 
}
\value{
A plot depicting the posterior distribution of probabilities of death calculated from the posterior parameter distribution resulting from the Bayesian Melding procedure (see \code{\link{hp.bm.imis}})
}
\references{
Heligman, Larry and John H. Pollard. 1980 "The Age Pattern of Mortality." \emph{Journal of the Institute of Actuaries} \bold{107}:49--80.
}
%\author{
%%  ~~who you are~~
%}
\note{
Likely used to plot the \code{H.final} return from \code{\link{hp.bm.imis}}
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{hp.nqx}}, \code{\link{hp.bm.imis}}
}
\examples{
%##---- Should be DIRECTLY executable !! ----
%##-- ==>  Define data, use random,
%##--	or do  help(data=index)  for the standard data sets.
#load a prior, age, nrisk and ndeath#
data(HPprior)

result <- hp.bm.imis(prior=q0, K=10, age=age, nrisk=lx, ndeath=dx)
H.final <- result$H.final

hpbayes.plot(nrisk=lx, ndeath=dx, age=age, hpp=H.final, plotdata=TRUE)
hpbayes.plot(age=age, hpp=H.final)

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ misc }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line