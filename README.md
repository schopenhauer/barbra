# barbra

This is my Dockerfile to spin up a new [Streisand](https://github.com/StreisandEffect/streisand) server in less than 10 seconds. The Docker image is based on Fedora 27 and has Python 2.7 and Ansible pre-installed.

## Prerequisites

- Docker installed and runnning on your local machine
- Bare metal server running Ubuntu 16.04 (LTS)

## Usage

First, we need to prepare the Docker container or run `chomd +x run.sh && ./run.sh`.

```sh
git clone https://github.com/schopenhauer/barbra
docker build . -t barbra
docker run -it barbra
```

Second, we generate a new SSH key, upload it to the target server and finally launch the Streisand script

```
ssh-keygen -f /root/.ssh/id_rsa -t rsa -q -N ""
ssh-copy-id root@<streisand-server>
./streisand
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/schopenhauer/barbra.

## License

The module is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
