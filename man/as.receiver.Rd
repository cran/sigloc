\name{as.receiver}
\alias{as.receiver}
\alias{plot.receiver}
\alias{print.receiver}
\alias{as.data.frame.receiver}
\title{Coerce to Class 'receiver'}
\description{
  The function \code{as.receiver} coerces an object to class \code{receiver}.\cr
  
  \code{as.data.frame} can be used to convert an object inheriting the class \code{receiver} into a \code{data.frame}.\cr
  
  \code{plot} allows a graphical display of the receiver locations.
}
\usage{
as.receiver(x)

\method{plot}{receiver}(x, add, pch, cex, col, bearings, ...)

\method{print}{receiver}(x, ...)

\method{as.data.frame}{receiver}(x, row.names = NULL,optional = FALSE, ...)}
\arguments{
  \item{x}{An object inheriting the class \code{data.frame} or \code{table} containing the X and Y location of the receiver, the bearings of the transmitter signal, and the identification of the point groupings.}
  \item{add}{A logical specification for whether to plot locations onto an existing plot window.}
  \item{pch}{Either an integer specifying a symbol or a single character to be used as the default in plotting points.}
  \item{cex}{A numerical value giving the amount by which plotting locations should be magnified to the default.}
  \item{col}{A specification for the default plotting color.}
  \item{bearings}{A logical specification for whether azimuth bearings should be plotted alongside locations.}
  \item{row.names}{NULL or a character vector giving the row names for the data frame. Missing values are not allowed.}
  \item{optional}{Logical. If \code{TRUE}, setting row names and convering column names is optional.}
  \item{...}{Additional parameters to be passed to the generic function \code{plot}, \code{print}, and \code{as.data.frame}.}
}
\details{The function \code{as.receiver} coerces an object inheriting the class \code{data.frame} or \code{table} into an object inheriting the class \code{receiver}. This class is used mainly to explore and standardize the ouput and input of radio telemetry data. The \code{plot} function for this class allows for the user to plot the azimuth bearings associated with each of the receiver locations by setting the input parameter \code{bearings} to \code{TRUE} and to append the plotted objects to an existing plot window by setting the input parameter \code{add} to \code{TRUE}.}
\value{The function \code{as.receiver} returns an object belonging to the S4 class \code{receiver}}
\author{Sergey S. Berg \email{berg1546@umn.edu}}
\seealso{
\code{\link[sigloc]{locate}} for additional information on the class \code{transmitter}.\cr
\code{\link[sigloc]{findintersects}} for additional information on the class \code{intersect}
}
\examples{
## Load the data
data(bear)

## Convert data to class 'receiver
bear<-as.receiver(bear)

## Display resulting object with bearings
plot(bear,bearings=TRUE,xlab="Easting",ylab="Northing")
}