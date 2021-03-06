% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/stocks_report.R
\name{get_stocks_hist}
\alias{get_stocks_hist}
\title{Download Stocks Historical Data}
\usage{
get_stocks_hist(symbols = NA, from = NA, today = TRUE, tax = 30,
  verbose = TRUE)
}
\arguments{
\item{symbols}{Character Vector. List of symbols to download historical data. 
Example: c('VTI','TSLA')}

\item{from}{Date. Since when do you wish to download historical data}

\item{today}{Boolean. Do you wish to additionaly download today's quote?}

\item{tax}{Numeric. Percentage for dividends real return. Range from 0 to 99}

\item{verbose}{Boolean. Print results and progress while downloading?}
}
\description{
This function lets the user download stocks historical data
}
