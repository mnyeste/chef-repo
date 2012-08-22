name "vagrant"
description "Standalone server on Vagrant"

run_list [
  "role[standalone]",
]

override_attributes(
  "gyorslevel" => {
    "war" => {
      "url" => "http://dl.dropbox.com/u/73252658/gyorslevel/gyorslevel-1.0-796d8837ca.war",
      "checksum" =>"19a8879abf2c6f45af2fc355c2aaf55d11a7941e32dbc90866ff8545c04e6670"
    }
  }
)
