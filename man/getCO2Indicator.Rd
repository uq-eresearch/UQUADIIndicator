\name{getCO2Indicator}
\alias{getCO2Indicator}
\title{get Green indicator for UADI!}
\usage{
getCO2Indicator(region, year,key)
}
\arguments{
  \item{region}{input one of three Regions:  Sydney, Melbourne, or SEQ, default SEQ }
  \item{year }{ three cencus year:  2001, 2006  or 2011,  default 2011}
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
This is the statistical for Green index by estimated the Car travelling.

}
\seealso{
\code{getCyclingIndicator}
\code{getWalkIndicator}
}

\examples{

getCO2Indicator('SEQ', 2011,'Car',"your key")

}
