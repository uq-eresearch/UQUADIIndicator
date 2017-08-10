\name{getWalkIndicator}
\alias{getWalkIndicator}
\title{get Walkonly JTW Indicator for UADI!}
\usage{
getWalkIndicator(region, year,OD,sacodetype,key)
}
\arguments{
  \item{region}{input one of three Regions:  Sydney, Melbourne, or SEQ, default SEQ }
  \item{year }{ three cencus year:  2001, 2006  or 2011,  default 2011}
  \item{OD}{ "O", or "D".   default: "O" }
  \item{sacodetype}{  "SA2", "SA3"   default: "SA3"" }
  \item{key } { This is the key your assigned by UQ eResearch group, please contact UQ eResearch group to obtian your key}

}
\value{
 \item{Region}
  \item{Mod}
  \item{Year}
  \item{minValues}{ This contains the details of SA3  regions details.  the minimum perons for walk activity. }
  \item{maxValues}{ This contains the details of SA3  regions details.  the maximum perons for walk activity. }
  \item{features}{ This contains the details of SA3  regions details.  It contans: SACode, name, latitude, longitude, distance.
  Total cycling persons, Total walk persons, total destination SA regions, total female and total males
  }

}
\description{
This is the statistical for JTW  by walked only.

}
\examples{

getWalkIndicator('SEQ', 2011)

}
