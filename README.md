# vips-benchmarks

The goal of this repo is to demonstrate the performance of the libvips
library in comparison to other image processing systems. Currently an accent
on [ruby-vips](https://github.com/jcupitt/ruby-vips): Ruby bindings for
libvips library, is made.

Be sure to check out the official benchmarks page: [VIPS - Speed and Memory
Use](https://github.com/jcupitt/libvips/wiki/Speed-and-memory-use)
for complete demonstration of performance and memory usage characteristics
of VIPS library.

Last update: July 19, 2017

## Benchmarks

```bash
$ ./runner 
Linux mm-jcupitt5 4.10.0-28-generic #32-Ubuntu SMP Fri Jun 30 05:32:18 UTC 2017
x86_64 x86_64 x86_64 GNU/Linux
Ruby-vips 2.0.0 built against vips-8.5.7-Tue Jul 18 12:51:34 BST 2017
Version: ImageMagick 6.9.7-4 Q16 x86_64 20170114 http://www.imagemagick.org
Copyright: © 1999-2017 ImageMagick Studio LLC
License: http://www.imagemagick.org/script/license.php
Features: Cipher DPC Modules OpenMP 
Delegates (built-in): bzlib djvu fftw fontconfig freetype jbig jng jpeg lcms
lqr ltdl lzma openexr pangocairo png tiff wmf x xml zlib
Image Science 1.3.0
building test image ...
tile=5
test image is 1450 by 2210 pixels
making tiff and jpeg derivatives ...
timing ruby/ruby-vips.rb ... done
timing ruby/rmagick.rb ... done
timing image-magick/image-magick ... done
measuring memuse for ruby/ruby-vips.rb ... done
measuring memuse for ruby/rmagick.rb ... done

real time in seconds, fastest of five runs
benchmark	tiff	jpeg
ruby-vips.rb	0.67	0.54	
image-magick	1.18	1.60	
rmagick.rb	1.34	1.61	

peak memory use in bytes
benchmark	peak RSS
ruby-vips.rb	62268
rmagick.rb	787720
```

## Performance test design

The repo has folders _ruby/_, _cpp/_ and others, each having platform
specific scripts using various libraries available for this platform.

Each script is coded to execute the same scenario (see Scenario section).

Root folder contains _runner_ script, running
scripts available in all folders.

See "Do it yourself" section for how to run benchmark scenario.

## Scenario

Test scenario was taken from [Speed and Memory
use](https://github.com/jcupitt/libvips/wiki/Speed-and-memory-use)
page from libvips [Home
page](https://jcupitt.github.io/libvips/). The test is
repeated 10 times. 

## Do it yourself

```bash
git clone https://github.com/jcupitt/vips-benchmarks

cd vips-benchmarks

bundle update

bundle exec ./runner 
```

## Copyright

Copyright (c) 2012, 2014 Stanislaw Pankevich and John Cupitt.

