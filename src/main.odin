package main

import "core:log"
import "core:fmt"

main :: proc() {
  fmt.print("Hello World!\n")
  context.logger = log.create_console_logger()
  log.debug("Hello World!\n")
}
