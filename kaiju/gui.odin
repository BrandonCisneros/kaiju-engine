package kaiju

//--- IMGUI Modules
import im      "../deps/odin-imgui"
import im_sdl  "../deps/odin-imgui/imgui_impl_sdl3"
import im_dx12 "../deps/odin-imgui/imgui_impl_dx12"

//--- Vendor Modules
import sdl  "vendor:sdl3"
import dx12 "vendor:directx/d3d12"
import dxgi "vendor:directx/dxgi"

//--- Global Constants

//--- Global Mutables



main :: proc() {
  im.GetCurrentWindow()
  im_sdl.InitForD3D()
}
