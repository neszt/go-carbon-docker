# go-carbon-docker

## Introduction

Dockerfile to build [go-carbon](https://github.com/go-graphite/go-carbon).

## Usage

```bash
docker run -p 2003:2003 -v ./data:/data go-carbon-docker
```

## Build your own image

### Latest:
```bash
docker build -t go-carbon-docker .
```
