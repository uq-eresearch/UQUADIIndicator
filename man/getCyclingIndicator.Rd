\name{getCyclingIndicator}
\alias{getCyclingIndicator}
\title{get Cycling Indicator for UADI!}
\usage{
getCyclingIndicator(region, year,OD,sacodetype,key)
}
\arguments{
  \item{region}{input one of three Regions:  Sydney, Melbourne, or SEQ, default SEQ }
  \item{year }{ three cencus year:  2001, 2006  or 2011,  default 2011}
  \item{OD}{ "Original", or "Destination".   default: Original }
  \item{sacodetype}{  "SA2", "SA3"   default: "SA3"" }
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
This is the statistical for JTW  by cycling by give censuse years.


}

\seealso{
\code{\link{getActiveTransportIndicator}}
\code{\link{getWalkIndicator}}
\code{\link{getDistTimeIndicator}}
}



\examples{

getCyclingIndicator('SEQ', 2011)

}
