
getDistTimeIndicator<-function(region="SEQ", year=2011,travel_mode="CarDriver",key="UQAPI", direction="O", sacodetype="SA3"){
  require(RCurl)
  require(jsonlite)

  #  Calculate the Indicator

  #  Input:   year: year;
  #           sa3: order of permuation entropy
  #           t: delay time of permuation entropy,

  # Output:
  #           pe:    permuation entropy
  #           hist:  the histogram for the order distribution
  Str1<-"http://uadi.project.uq.edu.au/UADI/resources/getIndicators/";
  str=""
  if (direction=='O'){
    str=paste0(Str1,"origins?", "key=",key)
  }
  else {
    str=paste0(Str1,"destinations?", "key=",key)
  }
   str=paste0(str,"&sacodetype=", sacodetype)
#   str=paste0("http://uadi.project.uq.edu.au/UADI/resources/getIndicators/origins?sacodetype=SA3", "&key=",key)
   str=paste0(str, "&region=",region)
   str=paste0(str, "&year=",year)
   str=paste0(str, "&feature=",travel_mode)
#  cat(str)
  req <- getURLContent(str)
  sa30501 <- fromJSON(req)

  return(sa30501)
}

getDistanceIndicator<-function(region="SEQ", year=2011,travel_mode="CarDriver",key="UQAPI", direction="O", sacodetype="SA3"){
  require(RCurl)
  require(jsonlite)

  #  Calculate the Indicator

  #  Input:   year: year;
  #           sa3: order of permuation entropy
  #           t: delay time of permuation entropy,

  # Output:
  #           pe:    permuation entropy
  #           hist:  the histogram for the order distribution
#  str=paste0("http://uadi.project.uq.edu.au/UADI/resources/getIndicators/origins?ret=D&sacodetype=SA3", "&key=",key)
  Str1<-"http://uadi.project.uq.edu.au/UADI/resources/getIndicators/";
  if (direction=='O'){
    str=paste0(Str1,"origins?", "key=",key)
  }
  else {
    str=paste0(Str1,"destinations?", "key=",key)
  }
  str=paste0(str,"&sacodetype=", sacodetype)

  str=paste0(str, "&region=",region)
  str=paste0(str, "&year=",year)
  str=paste0(str, "&feature=",travel_mode)
  cat(str)
  req <- getURLContent(str)
  sa30501 <- fromJSON(req)

  return(sa30501)
}

getTimeIndicator<-function(region="SEQ", year=2011,travel_mode="CarDriver",key="UQAPI", direction="O", sacodetype="SA3"){
  require(RCurl)
  require(jsonlite)

  #  Calculate the Indicator

  #  Input:   year: year;
  #           sa3: order of permuation entropy
  #           t: delay time of permuation entropy,

  # Output:
  #           pe:    permuation entropy
  #           hist:  the histogram for the order distribution
#  str=paste0("http://uadi.project.uq.edu.au/UADI/resources/getIndicators/origins?ret=T&sacodetype=SA3", "&key=",key)
  Str1<-"http://uadi.project.uq.edu.au/UADI/resources/getIndicators/";
  if (direction=='O'){
    str=paste0(Str1,"origins?", "key=",key)
  }
  else {
    str=paste0(Str1,"destinations?", "key=",key)
  }
  str=paste0(str,"&sacodetype=", sacodetype)

  str=paste0(str, "&region=",region)
  str=paste0(str, "&year=",year)
  str=paste0(str, "&feature=",travel_mode)
  cat(str)
  req <- getURLContent(str)
  sa30501 <- fromJSON(req)
  return(sa30501)
}


getDestinationJsonbyFrom<-function(From=30501,  year=2011,travel_mode="CarDriver",key="UQAPI", direction="O", sacodetype="SA3"){
  require(RCurl)
  require(jsonlite)

  #  Calculate the Indicator

  #  Input:   year: year;
  #           sa3: order of permuation entropy
  #           t: delay time of permuation entropy,

  # Output:
  #           pe:    permuation entropy
  #           hist:  the histogram for the order distribution

  str1=paste0("http://uadi.project.uq.edu.au/UADI/resources/getCities/");
  if (direction=='O'){
    str=paste0(Str1,"origins?", "key=",key)
  }
  else {
    str=paste0(Str1,"destinations?", "key=",key)
  }
  str=paste0(str, "&SA2Code=",From)
  str=paste0(str, "&year=",year)

  req <- getURLContent(str)
  sa30501 <- fromJSON(req)

  return(sa30501)
}
