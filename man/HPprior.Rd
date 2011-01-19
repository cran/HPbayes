\name{HPprior}
\docType{data}
\alias{age}
\alias{q0}
\alias{dx}
\alias{lx}
\title{prior, age groups, lx and dx values}
\description{ This data set contains 4 objects, \code{q0}, \code{age}, \code{lx} and \code{dx}. \code{q0} is a prior distribution for the eight Heligman-Pollard parameters. It was formed using \code{\link{prior.form}}\code{()}. \code{age} is a vector providing age groups (0-1, 1-4, 5-9, 10-14,...,100+) which matches the length of \code{lx} and \code{dx}. \code{lx} is a vector of persons at risk in the age groups described in \code{age}. \code{dx} is a vector containing the corresponding deaths in the age groups in \code{age}.}
\usage{data(HPprior)}
\format{Four objects: \code{q0} (a matrix with 8000 rows and 8 columns), \code{age} (a vector of length 22), \code{lx} (a vector of length 22), \code{dx} (a vector of length 22}
\keyword{datasets}
