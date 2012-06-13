name "testserver"
description "testserver"

run_list [
  "recipe[apt]",
  "role[java7]",
  "recipe[apache-james]",
  "recipe[jetty]"
]

override_attributes(
  "james" => {
    "version" => "3.0-beta4"
  }
)
