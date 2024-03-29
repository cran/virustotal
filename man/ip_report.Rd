% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ip_report.R
\name{ip_report}
\alias{ip_report}
\title{Get IP Report}
\usage{
ip_report(ip = NULL, ...)
}
\arguments{
\item{ip}{a valid IPv4 address in dotted quad notation; String; Required}

\item{\dots}{Additional arguments passed to \code{\link{virustotal2_GET}}.}
}
\value{
named list with the following potential items: 
\code{undetected_referrer_samples, detected_downloaded_samples, detected_referrer_samples, 
undetected_downloaded_samples, detected_urls, undetected_downloaded_samples, response_code, as_owner, verbose_msg, country, 
undetected_referrer_samples, detected_communicating_samples, resolutions, undetected_communicating_samples, asn}
}
\description{
Get passive DNS data and URLs detected by URL scanners
}
\examples{
\dontrun{

# Before calling the function, set the API key using set_key('api_key_here')

ip_report(ip="8.8.8.8")
}
}
\references{
\url{https://developers.virustotal.com/v2.0/reference}
}
\seealso{
\code{\link{set_key}} for setting the API key
}
