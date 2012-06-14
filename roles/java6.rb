name "java6"
description "Oracle JDK 5"

run_list [
  "recipe[java]",
]

default_attributes(
  "java" => {
    "install_flavor" => "oracle",
    "jdk_version" => "6",
    "jdk" => {
      "6" => {
        "x86_64" => {
          "url" => "http://dl.dropbox.com/u/73252658/java/jdk-6u33-linux-x64.bin",
          "checksum" => "978daf43e7fc302220174a16aecaf54d5e9b72f1cd1681f36ab14a2b4bad5fd4"
        }
      }
    }
  }
)


