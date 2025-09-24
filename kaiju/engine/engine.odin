package engine

import "core:fmt"
import "core:log"



engine :: proc() {
  context.logger = log.create_console_logger()
  log.log(.Info, "Kaiju Engine Intialized")
}
