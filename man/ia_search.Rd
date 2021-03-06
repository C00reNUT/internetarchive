% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ia_search.R
\name{ia_search}
\alias{ia_search}
\title{Search the Internet Archive}
\usage{
ia_search(terms, num_results = 5, page = 1, print_url = FALSE,
  print_total = TRUE)
}
\arguments{
\item{terms}{A set of metadata fields and corresponding values to search.
These should take the form of a named character vector.}

\item{num_results}{The number of results to return per page.}

\item{page}{When results are paged, which page of results to return.}

\item{print_url}{Should the URL used for the query be printed as a message?}

\item{print_total}{Should the total number of results for this query be
printed as a message?}
}
\value{
A character vector of Internet Archive item IDs.
}
\description{
Perform an advanced search of the Internet Archive, specifying which metadata
fields to search. Note that all searches are in the form of "contains," i.e.,
the title contains the search term.
}
\examples{
query1 <- c("title" = "damnation of theron ware")
ia_search(query1)
query2 <- c("title" = "damnation of theron ware",
            "contributor" = "gutenberg")
ia_search(query2)
}
\references{
See the documentation on the Internet Archive's
  \href{https://archive.org/advancedsearch.php}{advanced search page}.
}
