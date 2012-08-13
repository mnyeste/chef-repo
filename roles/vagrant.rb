name "vagrant"
description "Standalone server on Vagrant"

run_list [
  "role[standalone]",
]

override_attributes(
  "gyorslevel" => {
    "war" => {
      "url" => "http://dl.dropbox.com/u/73252658/gyorslevel/gyorslevel-1.0-880383a0bb.war",
      "checksum" =>"12244758a8d06bc6f8687f984a699d0635304a3837989d23eb77393fd9253513"
    }
  }
)
