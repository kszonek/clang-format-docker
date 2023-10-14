# clang-format-docker

Ubuntu based docker image with clang-format installed.

## Versions and architectures

| Version | Base Image | amd64 (x86_64) | arm64/v8 | arm32/v7 |
| --- | --- | --- | --- | --- |
| clang-format-7 | Ubuntu 18.04 | YES | YES | YES |
| clang-format-8 | Ubuntu 18.04 | YES | YES | YES |
| clang-format-9 | Ubuntu 18.04 | YES | YES | YES |
| clang-format-10 | Ubuntu 18.04 | YES | YES | YES |
| clang-format-11 | Ubuntu 20.04 | YES | YES | - |
| clang-format-12 | Ubuntu 20.04 | YES | YES | - |
| clang-format-13 | Ubuntu 22.04 | YES | YES | YES |
| clang-format-14 | Ubuntu 22.04 | YES | YES | YES |
| clang-format-15 | Ubuntu 22.04 | YES | YES | YES |
| clang-format-16 | Ubuntu 22.04 | YES | YES | - |
| clang-format-17 | Ubuntu 22.04 | YES | YES | - |

## Usage

Run container like local `clang-format` executable.

```
docker run --rm -it ghcr.io/kszonek/clang-format-17 --version
```

## Examples

TODO

## Build

By default, recent version of clang-format is used, as well as latest ubuntu image (LTS).

```
docker build -t clang-format .
```

You can specify clang version with a build flag:

```
docker build -t clang-format --build-arg CLANG_VERSION=17 .
```

Due too limited availability of packages in LLVM apt repository, some older versions of clang may require oldest base image. For match matrix, please refer to a table above.

```
docker build -t clang-format --build-arg BASE_VERSION=18.04 --build-arg CLANG_VERSION=9 .
```

## Contributing

Feel free to submit a Pull Request.
