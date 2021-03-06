% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/annotate.R
\name{cnlp_annotate}
\alias{cnlp_annotate}
\title{Run the annotation pipeline on a set of documents}
\usage{
cnlp_annotate(input, backend = NULL, verbose = TRUE)
}
\arguments{
\item{input}{an object containing the data to parse. Either a
character vector with the texts (optional names can
be given to provide document ids) or a data frame. The
data frame must have a column named 'text' containing
the raw text to parse; if there is a column named
'doc_id', it is treated as a a document identifier.
This conforms with corpus objects respecting the Text
Interchange Format (TIF), while allowing for some
variation.}

\item{backend}{name of the backend to use. Will default to the last
model to be initalized.}

\item{verbose}{logical; should annotation engine print out when it
finishes each text? Turned on by default.}
}
\value{
an object of class \code{annotation}
}
\description{
Runs the clean_nlp annotators over a given corpus of text
using the desired backend. The details for which annotators to run and
how to run them are specified by using one of:
\code{\link{cnlp_init_stringi}}, \code{\link{cnlp_init_spacy}},
\code{\link{cnlp_init_udpipe}}, or \code{\link{cnlp_init_corenlp}}.
}
\examples{
cnlp_init_stringi()
cnlp_annotate(un, verbose=FALSE)

}
\author{
Taylor B. Arnold, \email{taylor.arnold@acm.org}
}
