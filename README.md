# vips-benchmarks

The goal of this repo is to demonstrate the performance of the libvips library
in comparison to other image processing systems.

Now the accent on [ruby-vips](https://github.com/jcupitt/ruby-vips), Ruby
bindings for libvips library, is made, but later the number of libraries
(and platforms, I hope) will grow.

## June 26, 2012 - Status

The repo is a setup phase. More tests are being added. 
Please do not expect all the code to working,
stable and representative.

## Benchmarks for 2012.06.26

<pre>
Core(TM)2 Duo CPU     P7550  @ 2.26GHz
Linux kiwi 3.2.0-25-generic #40-Ubuntu SMP Wed May 23 20:30:51 UTC 2012 x86_64 x86_64 x86_64 GNU/Linux
vips-7.29.0-Sat Jun 23 21:51:53 BST 2012
Version: ImageMagick 6.6.9-7 2012-04-30 Q16 http://www.imagemagick.org
Copyright: Copyright (C) 1999-2011 ImageMagick Studio LLC
Features: OpenMP   

building test image ...
tile=10
test image is 2900 by 4420 pixels
making tiff and jpeg derivatives ...
testing ruby/ruby-vips.rb ... done
testing ruby/rmagick.rb ... done
testing image-magick/image-magick ... done
testing ruby/image_sci.rb ... done
testing netpbm/netpbm.sh ... done
benchmark       tiff    jpeg
ruby-vips.rb    0.45    0.57    
rmagick.rb      1.68    1.88    
netpbm.sh       2.17    1.62    
image-magick    2.89    3.04    
image_sci.rb    3.21    2.91    
</pre>

## Performance test design

The repo has folders _ruby/_, _cpp/_ and others, each having platform
specific scripts using various libraries available for this platform.

Each script is coded to execute the same scenario (see Scenario
section).

Root folder contains _runner_ script, containing links to all _runner_
scripts available in repo.

See "Do it yourself" section for how to run benchmark scenario.

## Scenario

Test scenario was taken from [Speed and Memory
use](http://www.vips.ecs.soton.ac.uk/index.php?title=Speed_and_Memory_Use)
page from libvips [Home
page](http://www.vips.ecs.soton.ac.uk/index.php?title=VIPS)

## Do it yourself

```bash
git clone https://github.com/stanislaw/vips-benchmarks

cd vips-benchmarks

./runner 
```

## TODO

* Scenario: more solid!
* More libraries for ruby
* More platforms (suggestions are welcome!)

## Copyright

Copyright (c) 2012 Stanislaw Pankevich and John Cupitt.
