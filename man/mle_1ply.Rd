% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/metab_mle.R
\name{mle_1ply}
\alias{mle_1ply}
\title{Make daily metabolism estimates from input parameters}
\usage{
mle_1ply(data_ply, data_daily_ply, ply_date, ply_validity, timestep_days, ...,
  specs = specs("m_np_oi_tr_km.nlm"))
}
\arguments{
\item{data_ply}{a data.frame containing all relevant, validated modeling data
for a single ply of data. (1 ply ~= 1 date, although the day length has 
been specified by day_start and day_end and may not be exactly 24 hours)}

\item{data_daily_ply}{NULL or a data.frame containing inputs with a daily 
timestep.}

\item{ply_date}{the modal date of this ply of data and data_daily, and the 
date by which this ply should be referred topresent.}

\item{ply_validity}{the output of \code{mm_is_valid_day} as applied to this 
data_ply for those tests specified in \code{day_tests}. Those tests will 
have been run before this function is called. The result is TRUE if the ply
is entirely valid, or a character vector containing one or more error 
messages if any tests failed.}

\item{timestep_days}{numeric length of the mean timestep for this day, if 
requested by setting \code{timestep_days} to \code{TRUE} or a numeric value
in the call to \code{\link{mm_model_by_ply}}}

\item{...}{other args that were passed untouched from the function calling 
mm_model_by_ply, through mm_model_by_ply, and finally to this function.}

\item{specs}{a list of model specifications and parameters for a model. 
Although this may be specified manually (it's just a list), it is easier
and safer to use \code{\link{specs}} to generate the list, because the set
of required parameters and their defaults depends on the model given in the
\code{model_name} argument to \code{specs}. The help file for 
\code{\link{specs}} lists the necessary parameters, describes them in 
detail, and gives default values.}
}
\value{
data.frame of estimates and \code{\link[stats]{nlm}} model
  diagnostics
}
\description{
Called from metab_mle().
}
\keyword{internal}
