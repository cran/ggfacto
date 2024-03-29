% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/geometrical_data_analysis.R
\name{ggpca_cor_circle}
\alias{ggpca_cor_circle}
\title{Correlation Circle Plot for Principal Component Analysis}
\usage{
ggpca_cor_circle(
  res.pca,
  axes = c(1, 2),
  proj = FALSE,
  interactive = TRUE,
  text_size = 3
)
}
\arguments{
\item{res.pca}{The result of \code{\link[FactoMineR:PCA]{FactoMineR::PCA}}.}

\item{axes}{The axes to print, as a numeric vector of length 2.}

\item{proj}{Set to `TRUE` to print projections of vectors over the two axes.}

\item{interactive}{By default an html interactive plot is done. Set to `FALSE`
to get a normal \code{\link[ggplot2]{ggplot}} graph.}

\item{text_size}{Size of the texte.}
}
\value{
A \code{\link[ggplot2]{ggplot}}.
}
\description{
Correlation Circle Plot for Principal Component Analysis
}
\examples{

data(mtcars, package = "datasets")
mtcars <- mtcars[1:7] |> dplyr::rename(weight = wt)
res.pca <- FactoMineR::PCA(mtcars, graph = FALSE)
ggpca_cor_circle(res.pca, interactive = FALSE)

}
