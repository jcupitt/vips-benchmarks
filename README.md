# vips-benchmarks

The goal of this repo is to demonstrate the performance of the libvips library in comparison to other image processing systems. Currently an accent on [ruby-vips](https://github.com/jcupitt/ruby-vips): Ruby bindings for libvips library, is made.

Be sure to checkout official benchmarks page: [VIPS - Speed and Memory Use](http://www.vips.ecs.soton.ac.uk/index.php?title=Speed_and_Memory_Use) for complete demonstration of the performance and memory usage characteristics of VIPS library.

Last update: June 20, 2014

## Benchmarks

```bash
$ bundle exec ./runner 
Darwin 41.88.168.192.in-addr.arpa 13.2.0 Darwin Kernel Version 13.2.0: Thu Apr 17 23:03:13 PDT 2014; root:xnu-2422.100.13~1/RELEASE_X86_64 x86_64

Ruby-vips 0.3.8 built against vips-7.38.5-Fri Jun  6 13:56:58 MSK 2014

Version: ImageMagick 6.8.8-9 Q16 x86_64 2014-06-06 http://www.imagemagick.org
Copyright: Copyright (C) 1999-2014 ImageMagick Studio LLC
Features: DPC Modules
Delegates: bzlib fftw freetype jng jpeg lcms ltdl png tiff xml zlib

Image Science 1.2.6

building test image ...
tile=10
test image is 2900 by 4420 pixels
making tiff and jpeg derivatives ...
timing ruby/ruby-vips.rb ... done
timing ruby/rmagick.rb ... done
timing image-magick/image-magick ... done
timing ruby/image_sci.rb ... done
measuring memuse for ruby/ruby-vips.rb ... done
measuring memuse for ruby/rmagick.rb ... done
measuring memuse for ruby/image_sci.rb ... done

real time in seconds, fastest of three runs
benchmark	tiff	jpeg
ruby-vips.rb	1.42	1.62
image_sci.rb	1.47	1.70
rmagick.rb	1.63	1.87
image-magick	1.68	2.01

peak memory use in bytes
benchmark	peak RSS
ruby-vips.rb	184926208
image_sci.rb	629784576
rmagick.rb	1465909248
```

## Performance test design

The repo has folders _ruby/_, _cpp/_ and others, each having platform
specific scripts using various libraries available for this platform.

Each script is coded to execute the same scenario (see Scenario section).

Root folder contains _runner_ script, running
scripts available in all folders.

See "Do it yourself" section for how to run benchmark scenario.

## Scenario

Test scenario was taken from [Speed and Memory use](http://www.vips.ecs.soton.ac.uk/index.php?title=Speed_and_Memory_Use) page from libvips [Home page](http://www.vips.ecs.soton.ac.uk/index.php?title=VIPS)

## Do it yourself

```bash
git clone https://github.com/stanislaw/vips-benchmarks

cd vips-benchmarks

bundle update

bundle exec ./runner 
```

## Copyright

Copyright (c) 2012, 2014 Stanislaw Pankevich and John Cupitt.

