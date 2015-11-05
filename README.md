# Dockerized Shallot

> A dockerized version of Shallot

[Shallot](https://github.com/katmagic/Shallot) allows to create customized `.onion` addresses for [Tor](https://www.torproject.org/)’s [hidden services](https://www.torproject.org/docs/hidden-services).

## Build

You may want to replace `rasshofer` and `dockerized-shallot` with your own namespaces and names.

```sh
docker build -t rasshofer/dockerized-shallot .
```

## Run

Again, you may want to replace `rasshofer` and `dockerized-shallot` with your own namespaces and names.

```shell
docker run "rasshofer/dockerized-shallot" ./shallot {ARGUMENTS}
```

## Example

```shell
$ time docker run --rm "rasshofer/dockerized-shallot" ./shallot "^hello"
```

```shell
-----------------------------------------------------------------
Found matching domain after 2349761 tries: hellojq2n6e4izd4.onion
-----------------------------------------------------------------
-----BEGIN RSA PRIVATE KEY-----
MIICXQIBAAKBgQCkc/wjuWw801Ez1aJl97yhC5s33sr+s0Z6XIQPi1uhAYdwmYRO
SyGaQ6Yt0BDNDuMxlI7yBpcdADcJAuX3acFITyk3HhB9NUiIjzbTVMOKr47nrAuj
8QDjZtydJ+AmYVuI2aelx60dmTuRcqQdSkXDjh4StETl5DzcCqdIbukHAwIDE9s/
…
qQ803/2b3fp6MeMqXj573r/znZjaDgL1g6E/AyP1nWu4YAdZ0e0ujW5OTK2jLBrQ
2zyJPL0bSDZRO+ZCHHkCQQCCKBZ0bvCC2yAsGJx1dfaGY+fNB3VBlXA8SZ6gWTez
1mA7vNn2DWA/yMTimSW/4A8vjWQkgsx8a2QJqwbleV4x
-----END RSA PRIVATE KEY-----

real	0m2.576s
user	0m0.049s
sys	0m0.019s
```

## Changelog

* 0.0.1
	* Initial version

## License

Copyright (c) 2015 [Thomas Rasshofer](http://thomasrasshofer.com/)  
Licensed under the MIT license.

See LICENSE for more info.