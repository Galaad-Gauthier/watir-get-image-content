# encoding: utf-8
module Watir
  class Image

    def to_png_base64
      puts 
      assert_exists
      js = "var canvas = document.createElement('canvas');
              canvas.width = #{self.natural_width};
              canvas.height = #{self.natural_height};
              var ctx = canvas.getContext('2d');
              var ctx = canvas.getContext('2d');
              ctx.drawImage($("img"), 0, 0);
              var dataURL = canvas.toDataURL('image/png');
              dataURL.replace(/^data:image\/(png|jpg|gif);base64\,/,"");
            "

      driver.execute_script js, @element
    end

  end
end