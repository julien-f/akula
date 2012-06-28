# Introduction

## TL;DR

Akula allows you to put all your commands in a directory and be treated as
subcommands like `git` does.

## Long version

Softwares should not cluttered the “executable space” with commands with generic
names such as `edit`, `view` etc.

A possible answer is the prefix solution where each commands is obviously
prefixed by the name of the software (`dpkg-gencontrol`, …).

This solution has a few drawbacks but the main one is to slow the shell
completion generation by adding a lotof command in the main path.

An other approach is to split the command in a command/subcommand pair where the
command is the name of your software and the subcommand the action you want to
realize.

This is the solution taken by `aptitude`, `git`, `hg` etc.

Akula permits you to do this without much work.

# Usage

1. Put all your subcommands in a given directory (`/usr/local/lib/COMMAND` or
   `/usr/lib/COMMAND` by default).
2. Then make a symbolic link to `akula` with the name of your command.

# Environment variable

You can tweak how work with the following variables:

- `AKULA_COMMAND`: the name of the command (used to compute the default path);
- `AKULA_SUBCOMMAND`: the name of the subcommand to call (usually the first
  argument);
- `AKULA_PATH`: the list of directories where Akula will look for the
  subcommands.
