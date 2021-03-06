% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/stocks_report.R
\name{stocks_daily_plot}
\alias{stocks_daily_plot}
\title{Stocks Daily Plot}
\usage{
stocks_daily_plot(portfolio, daily, weighted = TRUE, group = TRUE,
  save = FALSE)
}
\arguments{
\item{portfolio}{Dataframe. Output of the portfolio_perf function}

\item{daily}{Dataframe. Daily data}

\item{weighted}{Boolean. Should variation values be weighted to the
portfolio (or simply compared with initial value)?}

\item{group}{Boolean. Group stocks by stocks type?}

\item{save}{Boolean. Export plot as an image?}
}
\description{
This function lets the user plot stocks daily change
}
