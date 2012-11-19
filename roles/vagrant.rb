name "vagrant"
description "Standalone server on Vagrant"

run_list [
  "role[standalone]",
]

override_attributes(
  "gyorslevel" => {
    "war" => {
      "url" => "http://dl.dropbox.com/u/73252658/gyorslevel/gyorslevel-1.0-ab7633514b.war",
      "checksum" =>"9a11cfe7705da20934eedf60d8abf8ed46aca83e31165b8e00c4fd4e20fce059"
    }
  }
)
