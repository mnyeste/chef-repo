name "vagrant"
description "Standalone server on Vagrant"

run_list [
  "role[standalone]",
]

override_attributes(
  "gyorslevel" => {
    "war" => {
      "url" => "http://dl.dropbox.com/u/73252658/gyorslevel/gyorslevel-1.0-ef2f14cefa.war",
      "checksum" =>"2db631a1609ccd099f141f93d4306af42dbe05912624a08a0ca29b0e3cbf5f7f"
    }
  }
)
