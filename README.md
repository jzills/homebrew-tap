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

### snoop

A fast terminal viewer for Claude Code session transcripts: watch a session live in a second terminal, or browse past sessions to see what each prompt cost, how full the context is, which files changed and where the time went.

```sh
brew install jzills/tap/snoop
```

[Repository](https://github.com/jzills/snoop) · [Documentation](https://jzills.github.io/snoop/)

## Upgrading

```sh
brew upgrade jzills/tap/kx jzills/tap/snoop
```

Each formula points at the release's own archives and their published checksums, and is bumped by the tool's release workflow rather than by hand, so a formula here names a version that was actually published.
