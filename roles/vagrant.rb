name "vagrant"
description "Standalone server on Vagrant"

run_list [
  "role[standalone]",
]

override_attributes(
  "gyorslevel" => {
    "war" => {
      "url" => "http://dl.dropbox.com/u/73252658/gyorslevel/gyorslevel-1.0-eaa8c9a676.war",
      "checksum" =>"0c8c8e6b1c6fbe71359bc17176a02e7b0d22c5e3c1b21e6828c0b14379ab8d49"
    }
  }
)
