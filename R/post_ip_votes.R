#' Add a vote for a IP address
#'
#' 
#' @param ip IP address. String. Required.  
#' @param vote vote. String. Required.
#' @param \dots Additional arguments passed to \code{\link{virustotal_POST}}.
#' 
#' @return named list
#' @export
#' 
#' @references \url{https://developers.virustotal.com/v2.0/reference}
#'
#' @seealso \code{\link{set_key}} for setting the API key
#' 
#' @examples \dontrun{
#' 
#' # Before calling the function, set the API key using set_key('api_key_here')
#'    
#' post_ip_votes(ip = "64.233.160.0", vote = "malicious")
#' }

post_ip_votes <- function(ip = NULL, vote = NULL, ...) {

    if (!is.character(ip)) {
        stop("Must specify an IP address.\n")
    }

	vote_r = list("data" = list("type" = "vote", "attributes" = list("verdict" = vote)))

    res   <- virustotal_POST(path = paste0("ip_addresses/", ip, "/votes"),
                             body  = vote_r,...)

    res
}
