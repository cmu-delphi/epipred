% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_test_data.R
\name{get_test_data}
\alias{get_test_data}
\title{Get test data for prediction based on longest lag period}
\usage{
get_test_data(recipe, x)
}
\arguments{
\item{recipe}{A recipe object.}

\item{x}{An epi_df. The typical usage is to
pass the same data as that used for fitting the recipe.}
}
\value{
An object of the same type as \code{x} with columns \code{geo_value}, \code{time_value}, any additional
keys, as well other variables in the original dataset.
}
\description{
Based on the longest lag period in the recipe,
\code{get_test_data()} creates an \link[epiprocess:epi_df]{epi_df}
with columns \code{geo_value}, \code{time_value}
and other variables in the original dataset,
which will be used to create features necessary to produce forecasts.
}
\details{
The minimum required (recent) data to produce a forecast is equal to
the maximum lag requested (on any predictor) plus the longest horizon
used if growth rate calculations are requested by the recipe. This is
calculated internally.
}
\examples{
# create recipe
rec <- epi_recipe(covid_case_death_rates) \%>\%
  step_epi_ahead(death_rate, ahead = 7) \%>\%
  step_epi_lag(death_rate, lag = c(0, 7, 14)) \%>\%
  step_epi_lag(case_rate, lag = c(0, 7, 14))
get_test_data(recipe = rec, x = covid_case_death_rates)
}
