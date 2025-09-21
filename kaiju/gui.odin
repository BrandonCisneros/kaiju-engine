package kaiju

//import "core:sys/windows"
//import "core:debug/pe"
// Core/Base Modules
import "core:fmt"
import "core:log"

//--- IMGUI Modules
import im      "../deps/odin-imgui"
//import im_sdl  "../deps/odin-imgui/imgui_impl_sdl3"
//import im_dx12 "../deps/odin-imgui/imgui_impl_dx12"

//--- Vendor Modules
import sdl  "vendor:sdl3"
//import dx12 "vendor:directx/d3d12"
//import dxgi "vendor:directx/dxgi"

//--- Global Constants
G_INIT_SCREEN_SIZE: im.Vec2 = im.GetWindowSize()

//--- Global Mutables
g_screen_width: i64
g_screen_height: i64



main :: proc() {
  log.debug("Main - Entry Point")
  //--- Telemetry, loggin & debug


  //-- Initalize SDL3 subsystems
  // !TO-DO:  init subsystems
  assert(sdl.Init(sdl.INIT_AUDIO) == false)
  defer sdl.Quit()

  //-- Initialize main window  
  main_window := sdl.CreateWindow(
    "KAIJU Engine",
    i32(G_INIT_SCREEN_SIZE.x),
    i32(G_INIT_SCREEN_SIZE.y),
    {.RESIZABLE, .HIGH_PIXEL_DENSITY, .MAXIMIZED},
  )

  assert(main_window != nil)
  defer sdl.DestroyWindow(main_window)

  win_props := sdl.GetWindowProperties(main_window)
  fmt.print(win_props)

  fmt.print("Hello World!")
}
