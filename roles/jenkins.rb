name "jenkins"
description "Jenkins CI server"

run_list [
  "recipe[apt]",
  "role[java6]",
  "recipe[maven]",
  "recipe[jenkins]",
  "recipe[devinfra]"
  
]

override_attributes(
  "jenkins" => {
    "node" => {
      "user" => "jenkins"
    },
  },
  "maven" => {
      "version" => "3"
    }
)
