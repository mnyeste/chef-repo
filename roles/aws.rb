name "aws"
description "Standalone server in AWS"

run_list [
  "role[standalone]",
  "role[namecheap]"
]

override_attributes(
  "gyorslevel" => {
    "war" => {
      "url" => "http://dl.dropbox.com/u/73252658/gyorslevel/gyorslevel-1.0-8e9c6d5ba2.war",
      "checksum" =>"23a17d06f8c88ed7a8513aafc78072deef2ccd718821f465f93437a2dd481561"
     },    
    "domains" => ["gyorslevel.info"],
    "expiration" => "600000"
  }
)
