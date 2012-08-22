name "aws"
description "Standalone server in AWS"

run_list [
  "role[standalone]",
  "role[noip]"
]

override_attributes(
  "gyorslevel" => {
    "war" => {
      "url" => "http://dl.dropbox.com/u/73252658/gyorslevel/gyorslevel-1.0-796d8837ca.war",
       "checksum" =>"19a8879abf2c6f45af2fc355c2aaf55d11a7941e32dbc90866ff8545c04e6670"
        },    
    "domain" => "gyorslevel.no-ip.info",
    "expiration" => "600000"
  }
)
