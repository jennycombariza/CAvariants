\name{compsonetable.exe}
\alias{compsonetable.exe}
\title{
Polynomial component of inertia in column space
}
\description{
This function allows the analyst to compute the contribution of the polynomial components to the inertia (chi-squared or tau).
The ordered variable should be the column variable that is transformed by polynomials.
The polynomial components are the column polynomial components. 
The given input matrix is the Z matrix of generalised correlations from the hybrid decomposition.
It is called by \code{CAvariants} when \code{catype = "SOCA"} or \code{catype = "SONSCA"}.
}
\usage{
compsonetable.exe(Z)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
\item{Z}{
The matrix of generalised correlations between the polynomial and principal axes.}
}
\value{
The value returned is the matrix
\item{comps}{The matrix of the column polynomial component of inertia.}
}
\references{
Beh EJ and Lombardo R 2014 Correspondence Analysis: Theory, Practice and New Strategies. John Wiley & Sons.
Lombardo R Beh EJ Variants of Simple Correspondence Analysis. The R Journal (accepted).
}
\author{
Rosaria Lombardo and Eric J. Beh
}
\note{
This function belongs to the class called  \code{cacorporateplus}.
}
\keyword{multivariate}% __ONLY ONE__ keyword per line
