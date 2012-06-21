name "aws"
description "Standalone server in AWS"

run_list [
  "role[standalone]",
  "role[noip]"
]
