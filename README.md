# Supported tags and respective `Dockerfile` links

-	[`latest`, `2.3.1` (*Dockerfile*)](https://github.com/n42org/docker-tox/blob/latest/Dockerfile)

[![](https://badge.imagelayers.io/n42org/tox:latest.svg)](https://imagelayers.io/?images=n42org/tox:latest)
[![Build Status](https://travis-ci.org/n42org/docker-tox.svg?branch=master)](https://travis-ci.org/n42org/docker-tox)

# What is Tox?

Tox is a generic virtualenv management and test command line tool you can use for:

-   checking your package installs correctly with different Python versions and interpreters
-   running your tests in each of the environments, configuring your test tool of choice
-   acting as a frontend to Continuous Integration servers, greatly reducing boilerplate and merging CI and shell-based testing.

> [wikipedia.org/wiki/Tox (Python testing wrapper)](https://en.wikipedia.org/wiki/Tox_%28Python_testing_wrapper%29)

# How to use this image.

### Create a `Dockerfile` in your project

```dockerfile
FROM n42org/tox
```

Then, run the commands to build and run the Docker image:

```console
$ docker build -t my-tox .
$ docker run -it --rm --name my-tox-app -v "$PWD:/code" my-tox tox
```

### Without a `Dockerfile`

If you don't want to include a `Dockerfile` in your project, it is sufficient to do the following:

```console
$ docker run -it --rm --name my-tox-app -v "$PWD:/code" n42org/tox tox
```

# License

View [license information](https://bitbucket.org/hpk42/tox/src/default/LICENSE) for the software contained in this image.

# Supported Docker versions

This image is officially supported on Docker version 1.10.1.
