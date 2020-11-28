FROM ubuntu:20.04
LABEL maintainer="eko@altoshift.com"

RUN apt-get update && apt-get install -y \
	ruby-dev \
	gcc \
	make \
	ruby \
	&& rm -rf /var/lib/apt/lists/*

RUN gem install fpm -v 1.11.0 --no-rdoc

CMD ["fpm"]
