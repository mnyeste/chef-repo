name "vagrant"
description "Standalone server on Vagrant"

run_list [
  "role[standalone]",
]

override_attributes(
  "gyorslevel" => {
    "war" => {
      "url" => "http://dl.dropbox.com/u/73252658/gyorslevel/gyorslevel-1.0-0b7f691532.war",
      "checksum" =>"9b5a15942f4e9d66879713144333fbf4f618cbb71327f72df7b4b87af89464db"
    }
  }
)
