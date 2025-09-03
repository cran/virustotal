## ----eval=F, install----------------------------------------------------------
# # Install from CRAN
# install.packages("virustotal")
# 
# # Or install development version
# # library(devtools)
# # install_github("themains/virustotal")

## ----eval=F, load-------------------------------------------------------------
# library(virustotal)

## ----eval=F, api_key----------------------------------------------------------
# set_key("your_api_key_here")

## ----eval=F, scan_file--------------------------------------------------------
# # Submit a file for analysis
# result <- scan_file("path/to/suspicious_file.exe")
# analysis_id <- result$data$id

## ----eval=F, file_report------------------------------------------------------
# # Get analysis results using file hash
# report <- file_report("99017f6eebbac24f351415dd410d522d")
# 
# # Access scan results
# scan_results <- report$data$attributes$last_analysis_results
# total_engines <- length(scan_results)
# detections <- sum(sapply(scan_results, function(x) x$category == "malicious"))

## ----eval=F, rescan_file------------------------------------------------------
# # Request new analysis of existing file
# rescan_result <- rescan_file("99017f6eebbac24f351415dd410d522d")
# new_analysis_id <- rescan_result$data$id

## ----eval=F, scan_url---------------------------------------------------------
# # Submit URL for analysis
# url_result <- scan_url("http://suspicious-site.com")
# analysis_id <- url_result$data$id

## ----eval=F, url_report-------------------------------------------------------
# # Get analysis results using URL
# report <- url_report("http://www.google.com")
# 
# # Access scan results
# scan_results <- report$data$attributes$last_analysis_results
# threat_score <- report$data$attributes$stats

## ----eval=F, domain-----------------------------------------------------------
# # Get comprehensive domain analysis
# domain_info <- domain_report("google.com")
# 
# # Access various data points
# categories <- domain_info$data$attributes$categories
# whois_data <- domain_info$data$attributes$whois
# dns_records <- domain_info$data$attributes$dns_records

## ----eval=F, ip---------------------------------------------------------------
# # Get IP analysis including geolocation and ASN
# ip_info <- ip_report("8.8.8.8")
# 
# # Access geo and network information
# country <- ip_info$data$attributes$country
# asn <- ip_info$data$attributes$asn
# network <- ip_info$data$attributes$network

