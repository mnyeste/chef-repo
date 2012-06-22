name "aws"
description "Standalone server in AWS"

run_list [
  "role[standalone]",
  "role[noip]"
]

override_attributes(
  "gyorslevel" => {
    "url" => "https://www.dropbox.com/s/7qg5w57lijm0kho/gyorslevel-1.0-20120621.234858-2.war",
    "checksum" => "https://www.dropbox.com/s/7qg5w57lijm0kho/gyorslevel-1.0-20120621.234858-2.war"
   },
  "james" => {
    "domain" => "gyorsmail.no-ip.info"
  }
)