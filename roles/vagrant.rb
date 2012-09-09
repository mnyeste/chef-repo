name "vagrant"
description "Standalone server on Vagrant"

run_list [
  "role[standalone]",
]

override_attributes(
  "gyorslevel" => {
    "war" => {
      "url" => "http://dl.dropbox.com/u/73252658/gyorslevel/gyorslevel-1.0-56e2a90d3c.war",
      "checksum" =>"e6fb44bb66edd0ac36c5926e660dbef159bb9d9c8e7830f1dd8d2d9c471b8d53"
    }
  }
)
