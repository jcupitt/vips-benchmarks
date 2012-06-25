# vips-benchmarks

The goal of this repo is to demonstrate performance of libvips library taken in comparison with other image processing systems.

Now the accent on [ruby-vips](https://github.com/jcupitt/ruby-vips), Ruby bindings for libvips library, is made, but later the number of libraries (and platforms, I hope) will grow.

## June 26, 2012 - Status

The repo is a setup phase. Please do not expect all the code working stable and representative.

## Performance test design

The repo has folders ruby/, cpp/ and others, each having platform
specific scripts using various libraries available for this platform.

Each script is coded to execute the same scenario (see Scenario
section).

Each folder has _runner_ executable script, which runs all the scripts
in its directory, for example _ruby/runner_ runs ruby-vips and
rmagick.rb scripts one by one.

Root folder contains _runner_ script, containing links to all _runner_
scripts available in repo.

## Scenario

Test scenario was taken from [Speed and Memory use](http://www.vips.ecs.soton.ac.uk/index.php?title=Speed_and_Memory_Use) page from libvips [Home page](http://www.vips.ecs.soton.ac.uk/index.php?title=VIPS)

## Copyright

Copyright (c) 2012 stanislaw. See LICENSE.txt for
further details.

