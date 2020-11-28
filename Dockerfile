FROM ubuntu:18
LABEL maintainer="eko@altoshift.com"

RUN apt-get update && apt-get install -y \
	ruby-dev \
	gcc \
	make \
	ruby \
	&& rm -rf /var/lib/apt/lists/*

RUN gem install fpm -v 2.2.2 --no-ri --no-rdoc

CMD ["fpm"]
