#!/usr/bin/env ruby

require 'rubygems'
require 'image_science'

10.times do
  ImageScience.with_image(ARGV[0]) do |img|
    img.with_crop(100, 100, img.width() - 100, img.height() - 100) do |crop|
      crop.resize(crop.width() * 0.9, crop.height() * 0.9) do |small|
        small.save(ARGV[1])
      end
    end
  end
end
