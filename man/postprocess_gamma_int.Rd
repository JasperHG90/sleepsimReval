% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/results.R
\name{postprocess_gamma_int}
\alias{postprocess_gamma_int}
\title{Postprocess utility function for gamma_prob_bar}
\usage{
postprocess_gamma_int(z, m)
}
\arguments{
\item{z}{list. contains the MAP values of the transition probabilities.}

\item{m}{integer. Number of hidden states}
}
\value{
data frame in which each parameter estimate has been placed in its own column.
}
\description{
Postprocess utility function for gamma_prob_bar
}
