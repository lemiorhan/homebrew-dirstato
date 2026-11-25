# Homebrew tap for dirstato

[Homebrew](https://brew.sh) formula for
[dirstato](https://github.com/lemiorhan/dirstato), an interactive, read-only
disk usage explorer for macOS whose sizes match `du`.

## Install

```sh
brew install lemiorhan/dirstato/dirstato
```

or, in two steps:

```sh
brew tap lemiorhan/dirstato
brew install dirstato
```

The formula builds dirstato from source. Homebrew installs Go as a build
dependency, so nothing else is needed.

## Upgrade and uninstall

```sh
brew upgrade dirstato
brew uninstall dirstato
brew untap lemiorhan/dirstato
```

To build the latest commit on `main` instead of the latest release:

```sh
brew install --HEAD lemiorhan/dirstato/dirstato
```

## Issues

Report problems with dirstato itself at
[lemiorhan/dirstato](https://github.com/lemiorhan/dirstato/issues).

## License

[Apache License 2.0](LICENSE)
