name "vagrant"
description "Standalone server on Vagrant"

run_list [
  "role[standalone]",
]

override_attributes(
  "gyorslevel" => {
    "war" => {
      "url" => "http://dl.dropbox.com/u/73252658/gyorslevel/gyorslevel-1.0-ac30fbba3f.war",
      "checksum" =>"166583abeecbfee712266d693c168ecf4ff3a7a6eb70566b664fccb8d4b9bce2"
    }
  }
)
