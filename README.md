# Makefile Experiments

## Summary

This `make-exp` is a collection of Makefiles to facilitate building projects. It's designed to work with CI/CD systems such as Travis CI, CircleCI and Gitlab-CI.

## Conceptual Usage

As these are simply experiments, they cannot be used in actual development. At the top of the Makefile, you can include the makefile using the following:

```Makefile
-include $(shell curl -sSL -o .build-system "https://.../makefile"; echo .build-system)
```

This will download a Makefile called .build-system and include it at run-time. Once it has been successfully downloaded, you can run `make help` for a lsit of available targets.

## Inspiration

These experiments are inspired by [cloudposse/build-harness](https://github.com/cloudposse/build-harness).