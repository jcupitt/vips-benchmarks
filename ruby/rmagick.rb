#!/usr/bin/env ruby

require 'rubygems'
require 'rmagick'

include Magick

10.times do
    im = ImageList.new(ARGV[0])

    im = im.shave(100, 100)
    im = im.resize(0.9)
    kernel = [-1, -1, -1, -1, 16, -1, -1, -1, -1]
    im = im.convolve(3, kernel)

    im.write(ARGV[1])
end
