\name{getGraphIndicator}
\alias{getGraphIndicator}
\title{get Graph indicators for UADI!}
\usage{
getGraphIndicator(region, year,travel_mod,key)
}
\arguments{
  \item{region}{input one of three Regions:  Sydney, Melbourne, or SEQ, default SEQ }
  \item{year }{ three cencus year:  2001, 2006  or 2011,  default 2011}
  \item{travel_mod}{ nine travel mode:  "Train", "Bus", "Ferry", "CarDriver","CarPassenger", "Bicycle", "Walk", "Taxi",
           "Truck", or  "Motorbike".   default: CarDriverr  }
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
\references{

Guohun Zhu, Jonathan Corcoran, Paul Shyy, Salvatore Flavio Pilegg, Jane Hunter   Analysing journey-to-work data using complex networks. Submitted.

}
\keyword{ journey-to-work; complex networks; transport mode; Australian cities }
\seealso{
\code{getCyclingIndicator}
}
\examples{

getDistTimeIndicator('SEQ', 2011,'Car',"your key")

}
