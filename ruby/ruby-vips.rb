#!/usr/bin/env ruby

require 'rubygems'
require 'vips'

include VIPS

10.times do
    filename = ARGV[0]

    if filename.end_with? ".jpg"
        im = Image.jpeg filename, :sequential => true
    elsif filename.end_with? ".tif"
        im = Image.tiff filename, :sequential => true
    else
        im = Image.new filename
    end

    im = im.extract_area(100, 100, im.x_size - 200, im.y_size - 200)
    im = im.affinei(:bilinear, 0.9, 0, 0, 0.9, 0, 0)
    mask = [
        [-1, -1,  -1],
        [-1,  16, -1,],
        [-1, -1,  -1]
    ]
    m = Mask.new mask, 8, 0 
    im = im.conv(m)

    im.write(ARGV[1])
end
