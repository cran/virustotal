#' Retrieve votes for an Internet domain
#'
#' 
#' @param domain domain name. String. Required.
#' @param limit  Number of entries. Integer. Optional.  Default is 10.  
#' @param cursor String. Optional.
#' @param \dots Additional arguments passed to \code{\link{virustotal_GET}}.
#' 
#' @return named list 
#'   
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
#' get_domain_votes("http://www.google.com")
#' get_domain_votes("http://www.goodsfwrfw.com") # Domain not found
#' }

get_domain_votes <- function(domain = NULL, limit = NULL, cursor = NULL, ...) {

    if (!is.character(domain)) {
        stop("Must specify domain.\n")
    }

    domain <- gsub("^http://", "", domain)

    res   <- virustotal_GET(path = paste0("domains/", domain, "/votes"),
                                             query = list(limit = limit, cursor = cursor), ...)

    res
}
