# homebrew-tap

Homebrew formulae for my tools, on macOS and on Linux.

```sh
brew install jzills/tap/<tool>
```

That taps this repository on the way, so there is no `brew tap` to run first.

## Tools

### kx

A kubectl wrapper that adds index-based resource selection: run `kx get <resource>` once, then reference any result by number instead of typing full resource names.

```sh
brew install jzills/tap/kx
```

[Repository](https://github.com/jzills/kx) · [Documentation](https://jzills.github.io/kx/) · also on [PyPI](https://pypi.org/project/kx-cli/) and as a [krew](https://krew.sigs.k8s.io/) plugin (`kubectl krew install idx`)

## Upgrading

```sh
brew upgrade jzills/tap/kx
```

Each formula points at the release's own archives and their published checksums, and is bumped by the tool's release workflow rather than by hand, so a formula here names a version that was actually published.
