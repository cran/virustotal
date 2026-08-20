## ----include = FALSE----------------------------------------------------------
# Every chunk shows code without running it: the API needs a key and a
# network, and CRAN has neither. Sample output shown inline was captured
# from real responses.
knitr::opts_chunk$set(eval = FALSE)

## ----install------------------------------------------------------------------
# install.packages("virustotal")

## ----install_dev--------------------------------------------------------------
# pak::pak("themains/virustotal")

## ----load---------------------------------------------------------------------
# library(virustotal)

## ----api_key------------------------------------------------------------------
# set_key("your_api_key_here")

## ----scan_file----------------------------------------------------------------
# result <- scan_file("path/to/suspicious_file.exe")
# analysis_id <- result$data$id

## ----file_report--------------------------------------------------------------
# report <- file_report("99017f6eebbac24f351415dd410d522d")
# report

## ----file_report_raw----------------------------------------------------------
# scan_results <- report$data$attributes$last_analysis_results
# detections <- sum(sapply(scan_results, function(x) x$category == "malicious"))

## ----rescan_file--------------------------------------------------------------
# rescan_result <- rescan_file("99017f6eebbac24f351415dd410d522d")
# new_analysis_id <- rescan_result$data$id

## ----scan_url-----------------------------------------------------------------
# url_result <- scan_url("http://www.example.com")
# analysis_id <- url_result$data$id

## ----url_report---------------------------------------------------------------
# report <- url_report("http://www.google.com")
# scan_results <- report$data$attributes$last_analysis_results

## ----domain-------------------------------------------------------------------
# domain_info <- domain_report("google.com")
# 
# categories <- domain_info$data$attributes$categories
# whois_data <- domain_info$data$attributes$whois
# dns_records <- domain_info$data$attributes$last_dns_records

## ----ip-----------------------------------------------------------------------
# ip_info <- ip_report("8.8.8.8")
# 
# country <- ip_info$data$attributes$country
# asn <- ip_info$data$attributes$asn
# network <- ip_info$data$attributes$network

## ----options------------------------------------------------------------------
# options(
#   virustotal.requests_per_minute = 1000, # premium keys can go faster
#   virustotal.max_tries = 3, # attempts per request
#   virustotal.timeout = 60, # seconds
#   virustotal.throttle = TRUE # FALSE disables client-side pacing
# )

## ----errors-------------------------------------------------------------------
# tryCatch(
#   file_report("0000000000000000000000000000000000000000"),
#   virustotal_rate_limit_error = function(e) {
#     message("Out of quota; retry after ", e$retry_after, "s")
#   },
#   virustotal_auth_error = function(e) message("Check the API key"),
#   virustotal_error = function(e) message("VT error: ", conditionMessage(e))
# )

