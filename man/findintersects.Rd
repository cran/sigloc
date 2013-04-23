\name{findintersects}
\alias{findintersects}
\alias{plot.intersect}
\alias{print.intersect}
\alias{as.data.frame.intersect}
\title{Calculate Bearing Intersections}
\description{
  The function \code{findintersects} calculates the locations of the bearing intersections from radio telemetry studies.\cr
  
  \code{as.data.frame} can be used to convert an object inheriting the class \code{intersect} into a \code{data.frame}.\cr
  
  \code{plot} allows a graphical display of the calculated intersection locations.
}
\usage{
findintersects(x)

\method{plot}{intersect}(x, add, pch, cex, col, ...)

\method{print}{intersect}(x, ...)

\method{as.data.frame}{intersect}(x, row.names=NULL, optional=FALSE, ...)}
\arguments{
  \item{x}{An object inhering the class \code{receiver} containing the X and Y location of the receiver, the bearing of the transmitter signal, and the identification of the point groupings. If data inherits the class \code{data.frame} or \code{table}, it should contain these columns under the headings 'Easting', 'Northing','Azimuth', and 'GID' respectively}
  \item{add}{A logical specification for whether to plot locations onto an existing plot window.}
  \item{pch}{Either an integer specifying a symbol or a single character to be used as the default in plotting points.}
  \item{cex}{A numerical value giving the amount by which plotting locations should be magnified to the default.}
  \item{col}{A specification for the default plotting color.}
  \item{row.names}{NULL or a character vector giving the row names for the data frame. Missing values are not allowed.}
  \item{optional}{Logical. If \code{TRUE}, setting row names and convering column names is optional.}
  \item{...}{Additional parameters to be passed to the generic function \code{plot}, \code{print}, and \code{as.data.frame}.}
}
\details{This function uses data from radio telemetry studyies to compute the location of bearing intersections using basic algebra. These intersections are a key component of the maximum likelihood estimation (MLE) approach described in Lenth (1981) that is used to estimate the location of the transmitter signal in such studies.}
\value{The function \code{findintersects} returns an object belonging to the S4 class \code{intersect}}
\author{Sergey S. Berg \email{berg1546@umn.edu}}
\seealso{
\code{\link[sigloc]{locate}} for additional information on the class \code{transmitter}.\cr
\code{\link[sigloc]{as.receiver}} for additional information on the class \code{receiver}
}
\examples{
## Load the data and convert to desired format
data(bear)
bear<-as.receiver(bear)

## Calculate the location of bearing intersections
(cross<-findintersects(bear))

## Display results
plot(cross,xlab="Easting",ylab="Northing")
}