% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dynamic_inference.R
\name{dynamic_importance_sampling}
\alias{dynamic_importance_sampling}
\title{Runs belief update from a piece of dynamic evidence over a dynamic Bayesian
network}
\usage{
dynamic_importance_sampling(dyn_network, target_variable, dyn_evidence,
  sample_size = 50)
}
\arguments{
\item{dyn_network}{a java object of class \code{DynamicBayesianNetwork} over which the
computations will be carried out}

\item{target_variable}{the name of the variable over which the
posterior distribution will be computed}

\item{dyn_evidence}{the observations over the dynamic Bayesian network.}

\item{sample_size}{the size of the sample used to estimate the posterior
distribution.}
}
\value{
a \code{data.frame} with the posterior distribution over the target
variable on the different time slices.
}
\description{
Runs belief update from a piece of dynamic evidence over a dynamic Bayesian
network
}
\note{
The function uses importance sampling and is based on the factored
frontier method, see the AMIDST toolbox documentation.
}
\examples{
network <- dbn_generator(1,2,2)
print_amidst_bn(network)
stream <- generate_stream_from_dbn(network,1,10,"ClassVar")
resultsIS <- dynamic_importance_sampling(network,"ClassVar",stream)
plot(resultsIS[,2],type="l",ylim = c(0,1),col="red",xlab="Time slice",ylab="Prob. ClassVar = 1")
}

