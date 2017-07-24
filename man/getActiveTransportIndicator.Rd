\name{getActiveTransportIndicator}
\alias{getActiveTransportIndicator}
\title{get Pysical Activity for Transport (walk and cycling )  for UADI!}
\usage{
getActiveTransportIndicator(region, year,travel_mod,key)
}
\arguments{
  \item{region}{input one of three Regions:  Sydney, Melbourne, or SEQ, default SEQ }
  \item{year }{ three cencus year:  2001, 2006  or 2011,  default 2011}
  \item{travel_mod}{  Bicycle, Walk, or All,   default: All }
  \item{key } { This is the key your assigned by UQ eResearch group, please contact UQ eResearch group to obtian your key}

}
\value{
  \item{Region}
  \item{Mod}
  \item{Year}
  \item{minValues}{ This contains the details of SA3  regions details.  the minimum perons for Phycial activity. }
  \item{maxValues}{ This contains the details of SA3  regions details.  the maximum perons for Phycial activity. }
  \item{features}{ This contains the details of SA3  regions details.  It contans: SACode, name, latitude, longitude, distance. 
  Total cycling persons, Total walk persons, total destination SA regions, total female and total males
  }

}
\description{
This is the total  of the journey from home to the work place by mode.
\cr
It also  inlcudes Average time of the journey from home to the work place by mode.
}

\seealso{
\code{\link{getCyclingIndicator}}
\code{\link{getWalkIndicator}}
}

\examples{

getActiveTransportIndicator('SEQ', 2011,"your key")

}
