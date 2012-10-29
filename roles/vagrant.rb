name "vagrant"
description "Standalone server on Vagrant"

run_list [
  "role[standalone]",
]

override_attributes(
  "gyorslevel" => {
    "war" => {
      "url" => "http://dl.dropbox.com/u/73252658/gyorslevel/gyorslevel-1.0-d4b17c5c3e.war",
      "checksum" =>"176472e7ef96fe3c888f76354ec5e13b1b598c8cb871661ac2071495fa1d48fd"
    }
  }
)
