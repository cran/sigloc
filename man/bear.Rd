\name{bear}
\alias{bear}
\docType{data}
\title{Bear Tracking Data}
\description{This data gives the results of a radio telemetry study conducted in northern Minnesota on a four-year-old female black bear. Due to data sensitivity, all presented results, including names and locations, were slightly altered. These data should not be used for any purpose other than to understand the functionality of the package \code{sigloc}}
\usage{data(bear)}
\format{
  A data frame with 102 observations on the following 7 variables:
  \describe{
    \item{\code{Date}}{Data of observation}
    \item{\code{Observers}}{Names of observers}
    \item{\code{GID}}{Observation grouping number}
    \item{\code{Time}}{Time of observation}
    \item{\code{Easting}}{X location of observation using NAD1983 UTM Zone 15N}
    \item{\code{Northing}}{X location of observation using NAD1983 UTM Zone 15N}
    \item{\code{Azimuth}}{Azimuth bearing toward transmitter signal}
  }
}
\source{Berg, S. Unpublished Data.}
\examples{
## Load and display the data
data(bear)
}