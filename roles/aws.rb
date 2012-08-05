name "aws"
description "Standalone server in AWS"

run_list [
  "role[standalone]",
  "role[noip]"
]

override_attributes(
  "gyorslevel" => {
    "domain" => "gyorslevel.no-ip.info",
    "expiration" => "600000"
  }
)
