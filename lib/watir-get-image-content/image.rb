# encoding: utf-8
module Watir
  class Image

    def to_png_base64
      assert_exists
      js = "var canvas = document.createElement(\"canvas\");
              canvas.width = #{self.natural_width};
              canvas.height = #{self.natural_height};
              var ctx = canvas.getContext(\"2d\");
              ctx.drawImage({width: #{self.natural_width}, height: #{self.natural_height}}, 0, 0);
              var dataURL = canvas.toDataURL(\"image/png\");
              return dataURL.replace(/^data:image\/(png|jpg|gif);base64,/, "");
            "

      driver.execute_script js, @element

          def to_png_base64
      assert_exists
      js = %q{var canvas = document.createElement("canvas");
              canvas.width = arguments[0].width;
              canvas.height = arguments[0].height;
              var ctx = canvas.getContext("2d");
              ctx.drawImage(arguments[0], 0, 0);
              var dataURL = canvas.toDataURL("image/png");
              return dataURL.replace(/^data:image\/(png|jpg|gif);base64,/, "");}
      driver.execute_script js, @element
    end
    end

  end
end