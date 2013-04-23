\name{locate}
\alias{locate}
\alias{plot.transmitter}
\alias{print.transmitter}
\alias{as.data.frame.transmitter}
\title{Estimation of a Radio Telemetry Signal}
\description{
  The function \code{locate} estimates the location of a transmitter signal from radio telemetry studyies using the maximum likelihood estimation (MLE) approach.\cr
  
  \code{as.data.frame} can be used to convert an object inheriting the class \code{transmitter} into a \code{data.frame}.\cr
  
  \code{plot} allows a graphical display of the calculated transmitter signal locations.
}
\usage{
locate(x)

\S3method{plot}{transmitter}(x, add, errors, pch, cex, col, badcolor, ...)

\S3method{print}{transmitter}(x, ...)

\S3method{as.data.frame}{transmitter}(x, row.names=NULL, optional=FALSE, ...)}
\arguments{
  \item{x}{An object inhering the class \code{receiver} containing the X and Y location of the receiver, the bearing of the transmitter signal, and the identification of the point groupings. If data inherits the class \code{data.frame} or \code{table}, it should contain these columns under the headings 'Easting', 'Northing','Bearing', and 'GID' respectively}
  \item{add}{A logical specification for whether to plot locations onto an existing plot window.}
  \item{errors}{A logical specification for whether error ellipses should be plotted alongside estimated locations.}
  \item{pch}{Either an integer specifying a symbol or a single character to be used as the default in plotting points.}
  \item{cex}{A numerical value giving the amount by which plotting locations should be magnified to the default.}
  \item{col}{A specification for the default plotting color.}
  \item{badcolor}{A logical specification for whether non-MLE-derived locations should be idenitfied.}
  \item{row.names}{NULL or a character vector giving the row names for the data frame. Missing values are not allowed.}
  \item{optional}{Logical. If \code{TRUE}, setting row names and convering column names is optional.}
  \item{...}{Additional parameters to be passed to the generic function \code{plot}, \code{print}, and \code{as.data.frame}.}
}

\details{This function uses data from radio telemetry studyies to compute the location of a transmitter signal using the maximum likelihood estimation (MLE) approach described in Lenth (1981). If the MLE approach fails to provide a reasonable estimate of the transmitter signal location, the function will provide a warning message and instead use the midpoint of the intersections to estimate the location. This will also appear in the resulting object as a '2' under the \code{BadPoint} heading and can be displayed in the \code{plot} function by setting the input parameter \code{badcolor} to \code{TRUE}.}
\value{The function \code{locate} returns an object belonging to the S4 class \code{transmitter}}
\references{Lenth, R.V. (1981). On Finding the Source of a Signal. Technometrics, 23(2), 149-154.}
\author{Sergey S. Berg \email{berg1546@umn.edu}}
\seealso{
\code{\link[sigloc]{as.receiver}} for additional information on the class \code{receiver}.\cr
\code{\link[sigloc]{findintersects}} for additional information on the class \code{intersect}
}
\examples{
## Load the data and convert to desired format
data(bear)
bear<-as.receiver(bear)

## Estimate location of transmitter signal
(loc<-locate(bear))

## Display results with a different color for bad points
plot(loc,badcolor=TRUE,xlab="Easting",ylab="Northing")
}