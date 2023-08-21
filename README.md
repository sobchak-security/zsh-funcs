# zsh-funcs
Collection of convenience functions for zsh.

## Overview

Although nothing in this repository assumes any significant degree of originality, the functions assembled within have proven convenient enough in several projects. See zsh's user manual [Functions](https://zsh.sourceforge.io/Doc/Release/Functions.html) for how to load these functions.

Note that each function can also be run simply by sourcing the corresponding file first, e.g.,

```sh
source core/f_random_string ; f_random_string 12 "[:xdigit:]"
```

Also, note that each function comes with some degree of documentation which can be easily rendered with the ubiquitously available `perldoc` command, e.g.,

```sh
perldoc gpg/f_gpg_generate_key
```

## Compiling function libraries

This repository contains a simple GNU make `Makefile` which compiles all functions in a subdirectory located directly in the repository's root directory into a compiled library with the corresponding folder name. The library is created in the `${ZDOTDIR}` folder.

```sh
# create all function libraries in ${ZDOTDIR}
make all

# force creation of the core function library
make --always-make ${ZDOTDIR}/core.zwc
```