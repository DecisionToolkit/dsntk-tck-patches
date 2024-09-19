**dsntk** | Decision Toolkit

# TCK patches

[![MIT licensed][mit-badge]][mit-url]
[![Apache 2.0 licensed][apache-badge]][apache-url]
[![Contributor Covenant][cc-badge]][cc-url]

[mit-badge]: https://img.shields.io/badge/License-MIT-blue.svg
[mit-url]: https://opensource.org/licenses/MIT
[mit-license-url]: LICENSE-MIT
[apache-badge]: https://img.shields.io/badge/License-Apache%202.0-blue.svg
[apache-url]: https://www.apache.org/licenses/LICENSE-2.0
[apache-license-url]: LICENSE
[apache-notice-url]: NOTICE
[cc-badge]: https://img.shields.io/badge/Contributor%20Covenant-2.1-4baaaa.svg
[cc-url]: https://github.com/DecisionToolkit/dsntk-tck-patches/blob/main/CODE_OF_CONDUCT.md
[TCK patches]: https://github.com/DecisionToolkit/dsntk-tck-patches
[TCK]: https://github.com/dmn-tck/tck
[TCK master]: https://github.com/dmn-tck/tck/tree/master
[apply-patches.sh]: ./scripts/apply-patches.sh
[remove-patches.sh]: ./scripts/remove-patches.sh

## Overview

This is an opinionated set of [patches](./patches) to the original [TCK] test cases.
None of these patches changes the meaning of the test.
There is a detailed explanation why it was applied.

## Applying patches

There is a dedicated script [apply-patches.sh] prepared for applying patches to the original [TCK] repository.
To apply all patches, clone a fresh copy of [TCK master] branch, to e.g. `~/temp` directory:

```shell
$ cd ~/temp
$ git clone https://github.com/dmn-tck/tck.git tck
```

After cloning the [TCK master] branch, run the [apply-patches.sh] script:

```shell
$ ./scripts/apply-patches ~/temp/tck
```

## Removing patches

There is a dedicated script [remove-patches.sh] prepared for removing patches from the original [TCK] repository.
Assuming that the [TCK master] branch with applied patches is placed in `~/temp` directory,
then to remove all the patches run [remove-patches.sh] script:

```shell
$ ./scripts/remove-patches ~/temp/tck
```

## License

Licensed under either of

- [MIT license][mit-url] (see [LICENSE-MIT][mit-license-url]) or
- [Apache License, Version 2.0][apache-url] (see [LICENSE][apache-license-url] and [NOTICE][apache-notice-url])

at your option.

## Contribution

Any contributions to **[TCK patches]** are greatly appreciated.
All contributions intentionally submitted for inclusion in the work by you,
shall be dual licensed as above, without any additional terms or conditions.
