SHELL := bash
.ONESHELL:
.SHELLFLAGS := -eu -o pipefail -c
.SECONDEXPANSION:
MAKEFLAGS += --warn-undefined-variables
MAKEFLAGS += --no-builtin-rules

ifeq ($(origin .RECIPEPREFIX), undefined)
  $(error This Make does not support .RECIPEPREFIX. Please use GNU Make 4.0 or later)
endif
.RECIPEPREFIX = >

clean:
> ./clean
.PHONY: clean

setup: clean
> ./setup
.PHONY: setup

setup-linux:
> ./setup-linux
.PHONY: setup-linux