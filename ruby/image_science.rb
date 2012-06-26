#!/usr/bin/ruby
#
require 'rubygems'
require 'image_science'

puts "Using ImageScience #{ImageScience::VERSION}"

ImageScience.with_image(ARGV[0]) do |img|
  img.with_crop(100, 100, img.width() - 100, img.height() - 100) do |crop|
    puts "we are inside #with_crop"
    crop.resize(crop.width() * 0.9, crop.height() * 0.9) do |small|
      puts "we never reach inside #resize"
      small.save(ARGV[1])
    end
  end
end
