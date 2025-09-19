package kaiju

//************************************************************//
// Author: Brandon Cisneros
// Date: 09/19/2025
//************************************************************//

//import im "deps:odin-imgui"
import im "../deps/odin-imgui"
import "core:fmt"


main :: proc() {
  im.CHECKVERSION()
  im.CreateContext()
  defer {
    fmt.println("DestroyContext()")
    im.DestroyContext()
  }

  io := im.GetIO()

  //Build atlas
  tex_pixels: ^u8
  tex_w, tex_h: i32
  im.FontAtlas_GetTexDataAsRGBA32(io.Fonts, &tex_pixels, &tex_w, &tex_h)

  for i in 0..<10000000 {
    fmt.printf("NewFrame(): {}\n", i)
    io.DisplaySize = {8000, 8000}
    io.DeltaTime = 1.0/60.0
    im.NewFrame()

    @(static) f: f32 = 0.0
    im.Text("Hello World!\n")
    im.SliderFloat("float\n", &f, 0, 1)
    im.Text("Application average %.3f ms/frame (%.1f FPS)\n", 1000.0 / io.Framerate, io.Framerate)
    im.ShowDemoWindow()

    im.Render()
  }
}
