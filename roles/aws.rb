name "aws"
description "Standalone server in AWS"

run_list [
  "role[standalone]",
  "role[namecheap]"
]

override_attributes(
  "gyorslevel" => {
    "war" => {
      "url" => "http://dl.dropbox.com/u/73252658/gyorslevel/gyorslevel-1.0-db17ae7403.war",
          "checksum" =>"71dc6af22f25ddfe66b24162fa228f878e12bce7d1180ea67d3b986176b24471"
     },    
    "domain" => "gyorslevel.info",
    "expiration" => "600000"
  }
)
