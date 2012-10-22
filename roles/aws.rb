name "aws"
description "Standalone server in AWS"

run_list [
  "role[standalone]",
  "role[zoneedit]"
]

override_attributes(
  "gyorslevel" => {
    "war" => {
      "url" => "http://dl.dropbox.com/u/73252658/gyorslevel/gyorslevel-1.0-04ec4d39a2.war",
      "checksum" =>"f6d017a3b152b1099d51980fdc4eee64b73a4a623d0c87380f77dc372ea16eb8"
        },    
    "domain" => "gyorslevel.info",
    "expiration" => "600000"
  }
)
