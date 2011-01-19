\name{postpri.plot}
\Rdversion{1.1}
\alias{postpri.plot}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Posterior/Prior Heligman-Pollard parameter distribution plot
}
\description{
Produces an 8 panel plot of both the prior and posterior distribution for the eight parameters of the Heligman-Pollard model
}
\usage{
postpri.plot(..., prior, hpp, box = FALSE, type = "l", 
line.col = c("black", "red"), line.bound = TRUE, 
rowcol = c(2, 4))
}
%- maybe also 'usage' for other objects documented here.
\arguments{
\item{...}{Arguments to be passed to \code{\link{par}}}
  \item{prior}{
A n x 8 matrix containing the prior distribution for each of eight Heligman-Pollard parameters (8 columns)
}
  \item{hpp}{
An matrix containing the posterior distribution for each of the eight Heligman-Pollard parameters 
}
  \item{box}{
If TRUE, the plot will appear as box plots instead of Kernel density lines
}
  \item{type}{
Same as \code{type} in \code{par}. Sets the line type when the plot is the Kernel density
}
  \item{line.col}{
The line color for the  plot. The first argument is the color for the prior and the second is for the posterior. 
}
  \item{line.bound}{
If TRUE, will plot a box represneting the prior density
}
  \item{rowcol}{
A vector describing the number of rows and columns of the plot. These arguments are passed to \code{mfrow} in \code{par}. 
}
}
%\details{
%%  ~~ If necessary, more details than the description above ~~
%}
\value{
A plot graphing the prior and posterior distribution of the Heligman Pollard parameters
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

\seealso{
\code{\link{hp.bm.imis}}, \code{\link{par}}, \code{\link{density}}, \code{\link{boxplot}}
}
\examples{
##load a prior distribution##
data(HPprior)
##obtain and posterior distribution##
result <- hp.bm.imis(prior=q0, K=10, nrisk=lx, ndeath=dx) 

##plot them##
postpri.plot(prior=q0, hpp=result$H.final)
postpri.plot(prior=q0, hpp=result$H.final, box=TRUE)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ misc }
