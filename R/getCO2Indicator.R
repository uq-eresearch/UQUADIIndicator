getGraphIndicator<-function(region="SEQ", year=2011,travel_mod="CarDriver",key){
  require(RCurl)
  require(jsonlite)

  #  Calculate the Indicator

  #  Input:   year: year;
  #           sa3: order of permuation entropy
  #           t: delay time of permuation entropy,

  # Output:
  #           pe:    permuation entropy
  #           hist:  the histogram for the order distribution
  str=paste0("http://uadi.project.uq.edu.au/UADI/resources/getIndicators/origins?sacodetype=SA3", "&key=",key)
  str=paste0(str, "&region=",region)
  str=paste0(str, "&year=",year)
  str=paste0(str, "&feature=",travel_mod)

  req <- getURLContent(str)
  sa30501 <- fromJSON(req)

  return(sa30501)
}

getCO2Indicator<-function(region="SEQ", year=2011,travel_mod="CarDriver",key){
  require(RCurl)
  require(jsonlite)

  #  Calculate the Indicator

  #  Input:   year: year;
  #           sa3: order of permuation entropy
  #           t: delay time of permuation entropy,

  # Output:
  #           pe:    permuation entropy
  #           hist:  the histogram for the order distribution
  str=paste0("http://uadi.project.uq.edu.au/UADI/resources/getIndicators/origins?sacodetype=SA3", "&key=",key)
  str=paste0(str, "&region=",region)
  str=paste0(str, "&year=",year)
  str=paste0(str, "&feature=",travel_mod)

  req <- getURLContent(str)
  sa30501 <- fromJSON(req)

  return(sa30501)
}
