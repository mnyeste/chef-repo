name "aws"
description "Standalone server in AWS"

run_list [
  "role[standalone]",
  "role[noip]"
]

override_attributes(
  "gyorslevel" => {
    "url" => "https://www.dropbox.com/s/2a0328wgcw1fkuf/gyorslevel-1.0-20120627.115850-7.war",
    "checksum" => "35d318a1ce33ab925740779fbbe5dea4a81fefe44c395a6c59c195e130c95fff",
    "domain" => "gyorslevel.no-ip.info",
    "expiration" => "600000"
  }
)