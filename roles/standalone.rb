name "standalone"
description "Standalone server"

run_list [
  "recipe[apt]",
  "recipe[nginx]",
  "role[java6]",
  "recipe[apache-james]",
  "recipe[jetty6]",
  "recipe[gyorslevel]"
]

