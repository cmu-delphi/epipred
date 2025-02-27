% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils-latency.R
\name{get_latency_table}
\alias{get_latency_table}
\title{create the latency table
This is a table of column names and the latency adjustment necessary for that column. An example:}
\usage{
get_latency_table(
  training,
  columns,
  forecast_date,
  latency,
  sign_shift,
  epi_keys_checked,
  keys_to_ignore,
  info,
  terms
)
}
\description{
col_name   latency
\if{html}{\out{<chr>}}        \if{html}{\out{<int>}}
1 case_rate        5
2 death_rate       5
}
\keyword{internal}
