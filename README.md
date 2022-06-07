# zsh-funcs
Collection of convenience functions for zsh.

## Overview

Although nothing in this repository assumes any significant degree of originality, the functions assembled within have proven convenient enough in several projects. See zsh's user manual [Functions](https://zsh.sourceforge.io/Doc/Release/Functions.html) for how to load or even compile these functions accordingly. 

Note that each function can also be run simply by sourcing the corresponding file first, e.g.,

```sh
source core/f_random_string ; f_random_string 12 "[:xdigit:]"
```

Also, note that each function comes with some degree of documentation which can be easily rendered with the ubiquitously available `perldoc` command, e.g.,

```sh
perldoc gpg/f_gpg_generate_key
```