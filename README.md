# libass-build

build scripts for [libass](https://github.com/libass/libass)

## Installation

### Swift Package Manager

```
https://github.com/mpvkit/libass-build.git
```

## How to build

```bash
swift run --package-path scripts
```

or 

```bash
# deployment platform: macos,ios,tvos,maccatalyst
swift run --package-path scripts build platforms=ios,macos
```