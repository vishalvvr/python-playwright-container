# python-playwright-container
This is an effort to build python playwright contianer using fedora-minimal as base image.

# Build locally
```$ podman build -t <tag> -f Dockerfile```

> Note: Want to know which all system-dependencies should be installed in order to run playwright ?

```$ playwright install-deps --dry-run```

Happy Testing :)