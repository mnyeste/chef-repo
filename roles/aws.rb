name "aws"
description "Standalone server in AWS"

run_list [
  "role[standalone]",
  "role[noip]"
]

override_attributes(
  "gyorslevel" => {
    "war" => {
      "url" => "http://dl.dropbox.com/u/73252658/gyorslevel/gyorslevel-1.0-9d7b392d23.war",
      "checksum" =>"76227bfc84832fe47acd6eeda754ff600128842eca8eece753e8f1ec2cf5be51"
        },    
    "domain" => "gyorslevel.info",
    "expiration" => "600000"
  }
)
