# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [0.1.0]
- Changed from `system "cargo", "install", *(std_cargo_args[0..std_cargo_args.length-2] + ["./packages/cli"])` to `system "cargo", "install", "--locked", "--root", prefix, "--path", "./packages/cli"`
- Added build from source option
- Version of Lune in this is 0.7.1
