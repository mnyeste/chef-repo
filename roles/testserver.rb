name "testserver"
description "testserver"

run_list [
  "recipe[apt]",
  "role[java6]",
  "recipe[apache-james]"
#  "recipe[jetty]",
#  "recipe[gyorslevel]"
]

override_attributes(
  "james" => {
    "version" => "3.0-beta4"
  }
)
