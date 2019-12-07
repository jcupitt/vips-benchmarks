#!/usr/bin/env ruby

require 'vips'

10.times do
    im = Vips::Image.new_from_file ARGV[0], access: :sequential

    im = im.crop 100, 100, im.width - 200, im.height - 200
    im = im.reduce 1.0 / 0.9, 1.0 / 0.9, kernel: :linear
    mask = Vips::Image.new_from_array [
        [-1, -1,  -1], 
        [-1,  16, -1],
        [-1, -1,  -1]], 8
    im = im.conv mask, precision: :integer

    im.write_to_file ARGV[1]
end
