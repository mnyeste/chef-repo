name "vagrant"
description "Standalone server on Vagrant"

run_list [
  "role[standalone]",
]

override_attributes(
  "gyorslevel" => {
    "war" => {
      "url" => "http://dl.dropbox.com/u/73252658/gyorslevel/gyorslevel-1.0-60251513b9.war",
      "checksum" =>"7921d345918bd7f66096136ef18f8e066e2a77614ba19dd05d947da5faa80c3c"
    }
  }
)
