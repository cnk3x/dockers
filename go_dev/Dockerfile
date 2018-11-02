FROM centos:7

RUN yum install -y epel-release wget curl g++ gcc libc6-dev make pkg-config zsh && \
    rpm -ivh https://centos7.iuscommunity.org/ius-release.rpm && \
    yum install git2u -y && \
    git --version && \
	wget -O go.tgz "https://dl.google.com/go/go1.11.1.linux-amd64.tar.gz"; \
	echo "2871270d8ff0c8c69f161aaae42f9f28739855ff5c5204752a8d92a1c9f63993 *go.tgz" | sha256sum -c -; \
	tar -C /usr/local -xzf go.tgz; \
	rm go.tgz; \
    export PATH="/usr/local/go/bin:$PATH"; \
    go version; \
    sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)";

ENV GOPATH /go
ENV PATH $GOPATH/bin:/usr/local/go/bin:$PATH

RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"

WORKDIR $GOPATH