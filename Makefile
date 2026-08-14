# Copyright (c) 2023 Remo Ronca 106963724+sobchak-security@users.noreply.github.com
# MIT License

# > [W]hen you do set SHELL in your makefile that value is not exported in the
#   environment to recipe lines that make invokes. Instead, the value inherited
#   from the user’s environment, if any, is exported.
# see https://www.gnu.org/software/make/manual/html_node/Choosing-the-Shell.html
SHELL := $(shell which zsh)
# $(info SHELL ${SHELL})

# this picks up every folder directly under the current working directory containing function files
FOLDERS := $(sort $(patsubst %/,%,$(dir $(wildcard */f_*))))
# $(info FOLDERS ${FOLDERS})

TARGETS :=  $(patsubst %,$${ZDOTDIR}/%.zwc,${FOLDERS})
# $(info TARGETS ${TARGETS})

# see https://www.gnu.org/software/make/manual/html_node/Secondary-Expansion.html
.SECONDEXPANSION:

.PHONY: zsh-funcs-compile

zsh-funcs-compile: ${TARGETS}

${ZDOTDIR}/%.zwc: $$(wildcard %/f_*)
	@printf "building (${*})\t ${@}\nfrom\t\t $(patsubst %,${*}/%,${^F})\nchanged\t\t ${?}\n"
	@${SHELL} -c "zcompile -Uz ${@} $(patsubst %,${*}/%,${^F})"