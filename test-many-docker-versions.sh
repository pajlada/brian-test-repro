#!/usr/bin/env bash

versions=(
    20.3.0-slim
    20.3.0-alpine
    20.2.0-slim
    20.2.0-alpine
    20.1.0-slim
    20.1.0-alpine
    20.0.0-slim
    20.0.0-alpine
    )

for version in "${versions[@]}"; do
    tag="brian-test-$version"
    echo "Building $version"
    docker build --build-arg NODE_VERSION="$version" -t "$tag" --quiet .

    echo "Running $version"
    docker run --rm "$tag"

    echo ""
done

