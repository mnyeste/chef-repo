name "aws"
description "Standalone server in AWS"

run_list [
  "role[standalone]",
  "role[noip]"
]

override_attributes(
  "gyorslevel" => {
    "url" => "https://www.dropbox.com/s/7kjyj1723w0318w/gyorslevel-1.0-20120622.125431-4.war",
    "checksum" => "684e55852cfef59d3513d0b9e733a2323c42970bddeef556b84c32a31fd3cd03"
   },
  "james" => {
    "domain" => "gyorsmail.no-ip.info"
  }
)