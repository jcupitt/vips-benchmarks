#!/usr/bin/ruby

require 'rubygems'
require 'vips'

LIBVIPS_VERSION = %x[vips --version]

puts "Ruby-vips #{VIPS::VERSION} built against #{LIBVIPS_VERSION}"
