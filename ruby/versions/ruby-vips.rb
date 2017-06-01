#!/usr/bin/env ruby

require 'rubygems'
require 'vips'

LIBVIPS_VERSION = %x[vips --version]

puts "Ruby-vips #{Vips::VERSION} built against #{LIBVIPS_VERSION}"
