\name{getCO2Indicator}
\alias{getCO2Indicator}
\title{get Green indicator for UADI!}
\usage{
getCO2Indicator(region, year,direction,sacodetype, key)
}
\arguments{
  \item{region}{input one of three Regions:  Sydney, Melbourne, or SEQ, default SEQ }
  \item{year }{ three cencus year:  2001, 2006  or 2011,  default 2011}
  \item{direction}{  "O", "D"   default: "O"" }
  \item{sacodetype}{  "SA2", "SA3"   default: "SA3"" }
  \item{key } { This is the key your assigned by UQ eResearch group, please contact UQ eResearch group to obtian your key}
}
\value{
  \item{Region}
  \item{Mod}
  \item{Year}
  \item{minValues}{ This contains  minimum distances indicators and CO2 emission for car driver mode in JTW. }
  \item{maxValues}{ This contains  maximum distances indicators and CO2 emission for car driver mode in JTW. }
  \item{features}{ This contains the details of SA3  regions details.  It contans: SACode, name, latitude, longitude, distance.
  Total CO2 Emission in one time JTW (g), Total  greenhouse rating of a vehicle which was derived from the CO2 emissions of all vehicles, total  level of air pollutant emissions allowable for all vehicles
  }

}
\description{
This is the statistical for CO2 emissions (in grams) for all commuter car trips for a given region. The output includes minimum and maximum CO2 emssions, the average CO2 emssions in each city.

}
\seealso{

\code{\link{getCyclingIndicator}}
\code{\link{getWalkIndicator}}
\code{\link{getDistTimeIndicator}}
}

\examples{

getCO2Indicator('SEQ', 2011,'Car')

}
