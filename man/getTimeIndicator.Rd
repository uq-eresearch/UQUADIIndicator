\name{getDistTimeIndicator}
\alias{getDistTimeIndicator}
\title{get Distance and Time Indicator for UADI!}
\usage{
getDistTimeIndicator(region, year,travel_mod,direction,sacodetype,key)
}
\arguments{
  \item{region}{input one of three Regions:  Sydney, Melbourne, or SEQ, default SEQ }
  \item{year }{ three cencus year:  2001, 2006  or 2011,  default 2011}
  \item{travel_mod}{ nine travel mode:  "Train", "Bus", "Ferry", "CarDriver","CarPassenger", "Bicycle", "Walk", "Taxi",
           "Truck", or  "Motorbike".   default: CarDriverr  }
  \item{direction}{  "O", "D"   default: "O"" }
  \item{sacodetype}{  "SA2", "SA3"   default: "SA3"" }
  \item{key } { This is the key your assigned by UQ eResearch group, please contact UQ eResearch group to obtian your key}

}
\value{
  \item{Region}
  \item{Mod}
  \item{Year}
  \item{Mean linear distance(km)}
  \item{Distance Indicator}
  \item{Time Indicator}
  \item{Mean travel time(M)}
  \item{features}{ This contains the details of SA3  regions details.  It is a josn file. }

}
\description{
This is the Average distance of the journey from home to the work place by mode.
\cr
It also  inlcudes Average time of the journey from home to the work place by mode.

}
\examples{

getDistTimeIndicator('SEQ', 2011,'Car')

}
