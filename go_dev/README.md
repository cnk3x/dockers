
docker build -t go_dev .

docker run --rm -it -v $HOME:/go -w /go go_dev /usr/bin/zsh

