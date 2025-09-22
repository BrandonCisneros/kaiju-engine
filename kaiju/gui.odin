package kaiju

//import "core:sys/windows"
//import "core:debug/pe"
// Core/Base Modules
import "core:fmt"
import "core:log"


//--- IMGUI Modules
//import im "../deps/odin-imgui"
//import im_sdl  "../deps/odin-imgui/imgui_impl_sdl3"
//import im_dx12 "../deps/odin-imgui/imgui_impl_dx12"

//--- Vendor Modules
import sdl  "vendor:sdl3"
//import dx12 "vendor:directx/d3d12"
//import dxgi "vendor:directx/dxgi"

//--- Global Constants
G_INIT_SCREEN_WIDTH  :: 1280
G_INIT_SCREEN_HEIGHT :: 720

//--- Global Mutables
g_screen_width: i64
g_screen_height: i64



main :: proc() {
  context.logger = log.create_console_logger()
  defer log.destroy_console_logger(context.logger)

  //--- Telemetry, logging & debug



  //-- Initalize SDL3 subsystems
  init_video := sdl.Init({.VIDEO}); assert(init_video)
   
  
  
  //-- Initialize main window  
  main_window := sdl.CreateWindow(
    "KAIJU Engine",
    G_INIT_SCREEN_WIDTH,
    G_INIT_SCREEN_HEIGHT,
    {.RESIZABLE, .HIGH_PIXEL_DENSITY,},
  )

  assert(main_window != nil)
  defer sdl.DestroyWindow(main_window)

  main_loop: for {
    //process events
    sdl_ev: sdl.Event
    for sdl.PollEvent(&sdl_ev) {
      #partial switch sdl_ev.type {
        case .QUIT:
          break main_loop
      }
    }
  }

 
  sdl.Quit()
}
