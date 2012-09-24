name "aws"
description "Standalone server in AWS"

run_list [
  "role[standalone]",
  "role[zoneedit]"
]

override_attributes(
  "gyorslevel" => {
    "war" => {
      "url" => "http://dl.dropbox.com/u/73252658/gyorslevel/gyorslevel-1.0-5d66b9c2c2.war",
      "checksum" =>"0f10f8194b799838ca9d80927431a6ee57232cba2350cf45ff5dbf3a12e6015b"

        },    
    "domain" => "gyorslevel.info",
    "expiration" => "600000"
  }
)
