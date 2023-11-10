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

This is an opinionated set of patches to original TCK test cases.
The rule of thumb is, that none of these patches should change the meaning of the test
or the resulting value. There is a detailed explanation for each patch provided.

## Applying patches

There is a dedicated [script](apply-patches.sh) prepared for applying patches to TCK repository.

To apply patches, clone a fresh copy of TCK master branch, for example in **~/Temp** directory:

```shell
$ cd ~/Temp
$ git clone https://github.com/dmn-tck/tck.git tck
```

After cloning TCK master branch, run this [script](apply-patches.sh):

```shell
$ ./apply-patches ~/Temp/tck
```

## Removing patches

There is also a dedicated [script](remove-patches.sh) prepared for removing patches from original TCK repository.

Assuming that the TCK repository with applied patches is in **~/Temp** directory,
then to remove all patches, run this [script](remove-patches.sh):

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
