

getActiveTransportIndicator<-function(region="SEQ", year=2011,travel_mod="All",key="UQAPI"){
  require(RCurl)
  require(jsonlite)

  #  Calculate the Indicator

  #  Input:   year: year;
  #           sa3: order of permuation entropy
  #           t: delay time of permuation entropy,

  # Output:
  #           pe:    permuation entropy
  #           hist:  the histogram for the order distribution
  str=paste0("http://uadi.project.uq.edu.au/UADI/resources/cyclerates/origins?sacodetype=SA3", "&key=",key)
  str=paste0(str, "&region=",region)
  str=paste0(str, "&year=",year)
  str=paste0(str, "&feature=",travel_mod)
  cat(str)
  req <- getURLContent(str)
  sa30501 <- fromJSON(req)

  return(sa30501)
}

getWalkIndicator<-function(region="SEQ", year=2011,key="UQAPI"){
  require(RCurl)
  require(jsonlite)

  #  Calculate the Indicator

  #  Input:   year: year;
  #           sa3: order of permuation entropy
  #           t: delay time of permuation entropy,

  # Output:
  #           pe:    permuation entropy
  #           hist:  the histogram for the order distribution
  str=paste0("http://uadi.project.uq.edu.au/UADI/resources/cyclerates/origins?sacodetype=SA3", "&key=",key)
  str=paste0(str, "&region=",region)
  str=paste0(str, "&year=",year)
  str=paste0(str, "&feature=walk")

  req <- getURLContent(str)
  sa30501 <- fromJSON(req)

  return(sa30501)
}

getCyclingIndicator<-function(region="SEQ", year=2011,key="UQAPI"){
  require(RCurl)
  require(jsonlite)

  #  Calculate the Indicator

  #  Input:   year: year;
  #           sa3: order of permuation entropy
  #           t: delay time of permuation entropy,

  # Output:
  #           pe:    permuation entropy
  #           hist:  the histogram for the order distribution
  str=paste0("http://uadi.project.uq.edu.au/UADI/resources/cyclerates/origins?sacodetype=SA3", "&key=",key)
  str=paste0(str, "&region=",region)
  str=paste0(str, "&year=",year)
  str=paste0(str, "&feature=Bicycle")

  req <- getURLContent(str)
  sa30501 <- fromJSON(req)

  return(sa30501)
}
