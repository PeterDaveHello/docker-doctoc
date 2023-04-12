# docker-doctoc

![License](https://img.shields.io/badge/license-GPLv3.0-brightgreen.svg?style=flat)
[![Docker Hub Pulls](https://img.shields.io/docker/pulls/peterdavehello/npm-doctoc.svg)](https://hub.docker.com/r/peterdavehello/npm-doctoc/)

[![Docker Hub Badge](https://dockeri.co/image/peterdavehello/npm-doctoc)](https://hub.docker.com/r/peterdavehello/npm-doctoc/)

This Docker image packages the npm package [doctoc](https://github.com/thlorenz/doctoc), which generates a table of contents for Markdown files inside a local git repository. The generated links are compatible with anchors produced by GitHub and other platforms, thanks to a command line flag.

GitHub Repository:

- <https://github.com/PeterDaveHello/docker-doctoc>

Docker Hub Repository:

- <https://hub.docker.com/r/peterdavehello/npm-doctoc/>

## Basic Docker Usage

Use the following command to generate a table of contents for a specific Markdown file with the Docker image:

```sh
docker run --rm -v "$(pwd)":/app peterdavehello/npm-doctoc doctoc /app/README.md
```

Replace `README.md` with the path to your Markdown file. This command mounts the current directory to the `/app` folder inside the container and runs `doctoc` on the specified file. Docker will automatically pull the image if it's not already available locally.

## Basic doctoc Command Parameters

Here are some basic `doctoc` command parameters for your reference:

- `--github` (default): Generate GitHub-compatible links.
- `--bitbucket`: Generate Bitbucket-compatible links.
- `--gitlab`: Generate GitLab-compatible links.
- `--stdout`: Print the generated table of contents to stdout instead of updating the file.

For more details and usage instructions, visit the `doctoc` homepage: <https://github.com/thlorenz/doctoc>
