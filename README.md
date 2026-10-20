# interrupted.sh Homebrew tap

Homebrew formulae for [interrupted.sh](https://interrupted.sh) tools.

| Formula | What it is | Install |
| --- | --- | --- |
| `murk` | Encrypted secrets manager for developers ([docs](https://murk.interrupted.sh)) | `brew install interrupted-sh/tap/murk` |

## Installing

Install by the fully qualified name:

```sh
brew install interrupted-sh/tap/murk
```

Since Homebrew 6.0, formulae from third-party taps load only after you trust them. Installing by the full name trusts that one formula and nothing else in this tap. To install by short name instead (`brew install murk`), trust the formula first with `brew trust --formula interrupted-sh/tap/murk`. See [Tap Trust](https://docs.brew.sh/Tap-Trust).

## How formulae are updated

Each project's release workflow updates its own file in `Formula/` when it tags a release. The formulae pin the SHA-256 of the release archives, which carry signed build provenance; see each project's verification guide (for murk, [VERIFYING.md](https://github.com/interrupted-sh/murk/blob/main/VERIFYING.md)).

## License

MIT OR Apache-2.0 (see [LICENSE-MIT](LICENSE-MIT) and [LICENSE-APACHE](LICENSE-APACHE)).
