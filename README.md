# vips-benchmarks

The goal of this repo is to demonstrate the performance of the libvips library in comparison to other image processing systems. Currently an accent on [ruby-vips](https://github.com/jcupitt/ruby-vips): Ruby bindings for libvips library, is made.

Be sure to check out the official benchmarks page: [VIPS - Speed and Memory Use](http://www.vips.ecs.soton.ac.uk/index.php?title=Speed_and_Memory_Use) for complete demonstration of performance and memory usage characteristics of VIPS library.

Last update: Jan 24, 2016

## Benchmarks

```bash
$ ./runner 
Linux kiwi 4.2.0-23-generic #28-Ubuntu SMP Sun Dec 27 17:47:31 UTC 2015 x86_64
x86_64 x86_64 GNU/Linux
Ruby-vips 0.3.13 built against vips-8.2.2-Fri Jan 22 16:28:35 GMT 2016
Version: ImageMagick 6.8.9-9 Q16 x86_64 2015-08-06 http://www.imagemagick.org
Copyright: Copyright (C) 1999-2014 ImageMagick Studio LLC
Features: DPC Modules OpenMP
Delegates: bzlib djvu fftw fontconfig freetype jbig jng jpeg lcms lqr ltdl
lzma openexr pangocairo png tiff wmf x xml zlib

Image Science 1.2.6
building test image ...
tile=10
test image is 2900 by 4420 pixels
making tiff and jpeg derivatives ...
timing ruby/ruby-vips.rb ... done
timing ruby/ruby-vips8.rb ... done
timing ruby/rmagick.rb ... done
timing image-magick/image-magick ... done
timing ruby/image_sci.rb ... done
measuring memuse for ruby/ruby-vips.rb ... done
measuring memuse for ruby/ruby-vips8.rb ... done
measuring memuse for ruby/rmagick.rb ... done
measuring memuse for ruby/image_sci.rb ... done

real time in seconds, fastest of three runs
benchmark	tiff	jpeg
ruby-vips.rb	2.77	2.98	
ruby-vips8.rb	2.97	3.29	
image-magick	8.18	9.71	
rmagick.rb	9.22	10.06	
image_sci.rb	9.39	7.20	

peak memory use in bytes
benchmark	peak RSS
ruby-vips.rb	107340
ruby-vips8.rb	117604
image_sci.rb	146536
rmagick.rb	3352020
```

`rub-vips8` is a dynamic binding written entirely in Ruby. It's slightly
slower than the old hand-written-in-C `ruby-vips` binding, but much more
portable and much more powerful.

## Performance test design

The repo has folders _ruby/_, _cpp/_ and others, each having platform
specific scripts using various libraries available for this platform.

Each script is coded to execute the same scenario (see Scenario section).

Root folder contains _runner_ script, running
scripts available in all folders.

See "Do it yourself" section for how to run benchmark scenario.

## Scenario

Test scenario was taken from [Speed and Memory
use](http://www.vips.ecs.soton.ac.uk/index.php?title=Speed_and_Memory_Use)
page from libvips [Home
page](http://www.vips.ecs.soton.ac.uk/index.php?title=VIPS). The test is
repeated 10 times. 

## Do it yourself

```bash
git clone https://github.com/stanislaw/vips-benchmarks

cd vips-benchmarks

bundle update

bundle exec ./runner 
```

## Copyright

Copyright (c) 2012, 2014 Stanislaw Pankevich and John Cupitt.

