name "aws"
description "Standalone server in AWS"

run_list [
  "role[standalone]",
  "role[noip]"
]

override_attributes(
  "gyorslevel" => {
    "url" => "https://www.dropbox.com/s/0wnps3p3tro9axe/gyorslevel-1.0-20120628.145251-8.war",
    "checksum" => "c02c915f17d36e957bea226be10e585f21151a777c503461963e1c14453724e5",
    "domain" => "gyorslevel.no-ip.info",
    "expiration" => "600000"
  }
)
