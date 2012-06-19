name "testserver"
description "testserver"

run_list [
  "recipe[apt]",
  "recipe[nginx]",
  "role[java6]",
  "recipe[apache-james]",
  "recipe[jetty6]",
  "recipe[gyorslevel]"
]

override_attributes(
  "james" => {
    "version" => "3.0-beta4"
  }
)
