# bazel-cpp-starter

Starter project for using C++ in Bazel with good defaults. Uses a recent C++
compiler/STL from [here](https://github.com/nicolov/bazel-buildroot-toolchain)
and defaults to statically linked binaries for easy deployment and use.

## Getting started

```
bazel run //src:hello
```
