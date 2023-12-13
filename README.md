**DSNTK** | Decision Toolkit

# TCK patches

[![MIT licensed][mit-badge]][mit-url]
[![Apache 2.0 licensed][apache-badge]][apache-url]
[![Contributor Covenant][coc-badge]][coc-url]

[mit-badge]: https://img.shields.io/badge/License-MIT-blue.svg
[mit-url]: https://github.com/dsntk/dsntk-tck-patches/blob/main/LICENSE-MIT
[apache-badge]: https://img.shields.io/badge/License-Apache%202.0-blue.svg
[apache-url]: https://github.com/dsntk/dsntk-tck-patches/blob/main/LICENSE-APACHE
[coc-badge]: https://img.shields.io/badge/Contributor%20Covenant-2.1-4baaaa.svg
[coc-url]: https://github.com/dsntk/dsntk-tck-patches/blob/main/CODE_OF_CONDUCT.md

## Overview

This is an opinionated set of patches to the original [TCK](https://github.com/dmn-tck/tck) test cases.
The rule of thumb is, that none of these patches should change the meaning of the test.
There is a detailed description for each patch provided with an explanation why this patch should be applied.

## Applying patches

There is a dedicated [script](apply-patches.sh) named `apply-patches.sh`
prepared for applying patches to the original [TCK](https://github.com/dmn-tck/tck) repository.
To apply all patches, clone a fresh copy of TCK [master](https://github.com/dmn-tck/tck/tree/master) branch,
for example to `~/Temp` directory:

```shell
$ cd ~/Temp
$ git clone https://github.com/dmn-tck/tck.git tck
```

After cloning the TCK [master](https://github.com/dmn-tck/tck/tree/master) branch,
run [apply-patches.sh](apply-patches.sh) script like this:

```shell
$ ./apply-patches ~/Temp/tck
```

## Removing patches

There is also a dedicated [script](remove-patches.sh) named `remove-patches.sh`
prepared for removing patches from the original [TCK](https://github.com/dmn-tck/tck) repository.
Assuming that the [TCK](https://github.com/dmn-tck/tck) repository with applied patches
is placed in `~/Temp` directory, then to remove all the patches,
run [remove-patches.sh](remove-patches.sh) script like this:

```shell
$ ./remove-patches ~/Temp/tck
```

## License

Licensed under either of

- [MIT license](https://opensource.org/licenses/MIT) ([LICENSE-MIT][mit-url]) or
- [Apache License, Version 2.0](https://www.apache.org/licenses/LICENSE-2.0) ([LICENSE-APACHE][apache-url])

at your option.

## Contribution

Any contributions are greatly appreciated.
If you would like to get involved, please don't hesitate to reach out to us.
All contributions intentionally submitted for inclusion in the work by you,
shall be dual licensed as above, without any additional terms or conditions.
