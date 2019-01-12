# barbra

This is my Dockerfile to spin up [Streisand](https://github.com/StreisandEffect/streisand) server in less than 10 seconds. The Docker image will be based on Fedora 27 and come with Python 2.7 pre-installed.

## Prerequisites

- Docker installed on your local machine
- Bare metal server running Ubuntu 16.04

## Usage

### Build image

```sh
git clone https://github.com/schopenhauer/barbra
docker build . -t barbra
```

### Run image

```sh
docker pull schopenhauer/barbra
docker run -it barbra
ssh-copy-id root@<streisand-server>
./streisand
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/schopenhauer/barbra.

## License

The module is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
