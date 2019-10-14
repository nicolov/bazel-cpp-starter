load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

toolchain_commit = "03004a6b2f533344fcdd5b7ddf1ee7eef2ad7c35"

http_archive(
    name = "bazel_buildroot_toolchain",
    urls = [
        "https://github.com/nicolov/bazel-buildroot-toolchain/archive/{}.tar.gz".format(toolchain_commit),
    ],
    sha256 = "43b50ff1396c9c4522a01ac961bdac0922d03c40fbe2a21af9d232aa5b0a71d1",
    strip_prefix = "bazel-buildroot-toolchain-{}".format(toolchain_commit),
)

load("@bazel_buildroot_toolchain//:deps.bzl", "bazel_buildroot_toolchain_deps")

bazel_buildroot_toolchain_deps()
