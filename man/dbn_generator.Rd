% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tools.R
\name{dbn_generator}
\alias{dbn_generator}
\title{Generates a random dynamic Bayesian network}
\usage{
dbn_generator(n_c_vars, n_d_vars, n_s)
}
\arguments{
\item{n_c_vars}{the number of Gaussian variables}

\item{n_d_vars}{the number of discrete variables}

\item{n_s}{the number of states of the discrete variables}
}
\value{
a Java object of class \code{DynamicBayesianNetwork}
}
\description{
Generates a random dynamic Bayesian network
}
\examples{
d <- dbn_generator(3,2,2)
print_amidst_bn(d)
}

