% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/methods.R
\name{plot.tw_Class_words}
\alias{plot.tw_Class_words}
\title{Plot words}
\usage{
\method{plot}{tw_Class_words}(x, y = NULL, scale = c(4, 0.5),
  min.freq = 100, max.n.words = 100, colors = brewer.pal(min(c(9,
  max.n.words)), "Blues"), ...)
}
\arguments{
\item{x}{A \code{tw_Class_words} object}

\item{y}{Ignored}

\item{scale}{See \code{\link[=wordcloud]{wordcloud()}}}

\item{min.freq}{See \code{\link[=wordcloud]{wordcloud()}}}

\item{max.n.words}{Max number of words to include}

\item{colors}{See \code{\link[=wordcloud]{wordcloud()}}}

\item{...}{Further arguments to be passed to \code{\link[=wordcloud]{wordcloud()}}}
}
\description{
Plot words
}
