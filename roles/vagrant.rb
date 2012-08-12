name "vagrant"
description "Standalone server on Vagrant"

run_list [
  "role[standalone]",
]

override_attributes(
  "gyorslevel" => {
    "war" => {
      "url" => "http://dl.dropbox.com/u/73252658/gyorslevel/gyorslevel-1.0-d268b70f87.war",
      "checksum" =>"dd1cc20663f709e37b417fa50c408f8ac4369c5df759c1b9fded1cc0a6c4665b"
    }
  }
)
