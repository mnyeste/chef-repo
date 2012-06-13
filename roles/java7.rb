name "java7"
description "Oracle JDK 7"

run_list [
  "recipe[java]",
]

default_attributes(
  "java" => {
    "install_flavor" => "oracle",
    "jdk_version" => "7",
    "jdk" => {
      "7" => {
        "x86_64" => {
          "url" => "http://dl.dropbox.com/u/73252658/jdk-7u5-linux-x64.tar.gz",
          "checksum" => "2a118ce9350d0c0cbaaeef286d04980df664b215d6aaf7bc1d4469abf05711bf"
        }
      }
    }
  }
)


