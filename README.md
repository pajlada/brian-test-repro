# Reproduce locally

1. `node index.mjs`

# Reproduce on docker

1. `./test-many-docker-versions.sh`

This will test the following docker tags:

```
20.3.0-slim
20.3.0-alpine
20.2.0-slim
20.2.0-alpine
20.1.0-slim
20.1.0-alpine
20.0.0-slim
20.0.0-alpine
```

# Reproduce manually on docker

1. `docker build --build-arg NODE_VERSION=20.3.0 -t brian-test .`
2. `docker run --rm brian-test`
