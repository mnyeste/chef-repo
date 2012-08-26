name "vagrant"
description "Standalone server on Vagrant"

run_list [
  "role[standalone]",
]

override_attributes(
  "gyorslevel" => {
    "war" => {
      "url" => "http://dl.dropbox.com/u/73252658/gyorslevel/gyorslevel-1.0-c2f47445e2.war",
      "checksum" =>"44075fe700d58809ad53a86720dd04475d9fb7aed7bee07e83749358007b71b2"
    }
  }
)
