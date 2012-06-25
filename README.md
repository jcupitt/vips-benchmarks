# vips-benchmarks

The goal of this repo is to demonstrate performance of libvips library taken in comparison with other image processing systems.

Now the accent on [ruby-vips](https://github.com/jcupitt/ruby-vips), Ruby bindings for libvips library, is made, but later the number of libraries (and platforms, I hope) will grow.

## June 26, 2012 - Status

The repo is a setup phase. Only two scripts for ruby-vips and rmagick are available in _ruby/_ folder. Please, do not expect all the code working stable and representative.

## Benchmarks for 2012.06.26

<pre>
stanislaw@localhost ~/work/gems/vips-benchmarks $ ./runner images/huge.jpg output/huge.jpg 

==== Ruby platform ====

Ruby-vips 0.1.1

real	0m1.806s
user	0m3.284s
sys	  0m0.075s

This is RMagick 2.13.1 ($Date: 2009/12/20 02:33:33 $) Copyright (C) 2009 by Timothy P. Hunter
Built with ImageMagick 6.7.7-5 2012-06-24 Q16 http://www.imagemagick.org
Built for ruby 1.9.3
Web page: http://rmagick.rubyforge.org
Email: rmagick@rubyforge.org

real	0m2.882s
user	0m3.486s
sys	  0m0.147s
</pre>

## Performance test design

The repo has folders _ruby/_, _cpp/_ and others, each having platform
specific scripts using various libraries available for this platform.

Each script is coded to execute the same scenario (see Scenario
section).

Each folder has _runner_ executable script, which runs all the scripts
in its directory, for example _ruby/runner_ runs ruby-vips and
rmagick.rb scripts one by one.

Root folder contains _runner_ script, containing links to all _runner_
scripts available in repo.

See "Do it yourself" section for how to run benchmark scenario.

## Scenario

Test scenario was taken from [Speed and Memory use](http://www.vips.ecs.soton.ac.uk/index.php?title=Speed_and_Memory_Use) page from libvips [Home page](http://www.vips.ecs.soton.ac.uk/index.php?title=VIPS)

## Do it yourself

```bash
git clone https://github.com/stanislaw/vips-benchmarks

cd vips-benchmarks

# for all platforms
./runner images/huge.jpg output/huge.jpg

# or more specifically for ruby platform:
ruby/runner images/huge.jpg output/huge.jpg

# for one concrete library:
time ruby ruby/ruby-vips.rb images/huge.jpg output/huge.jpg
```

## TODO

* Scenario: more solid!
* More libraries for ruby
* More platforms (suggestions are welcome!)

## Copyright

Copyright (c) 2012 Stanislaw Pankevich and (hopefully) John Cupitt.
