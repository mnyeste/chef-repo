name "vagrant"
description "Standalone server on Vagrant"

run_list [
  "role[standalone]",
]

override_attributes(
  "gyorslevel" => {
    "war" => {
      "url" => "http://dl.dropbox.com/u/73252658/gyorslevel/gyorslevel-1.0-ab350299ca.war",
      "checksum" =>"e6044c6a401ee37336be3faa2f0e4fa81e3ae843831a7e4304f39f2fe2e49121"
    }
  }
)
