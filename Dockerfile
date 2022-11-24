FROM ruby:3.1.2-alpine

ENV BUNDLER_VERSION=2.3.26
ENV DOCKERIZE_VERSION v0.6.1

RUN apk add --update --no-cache \
    binutils-gold \
    build-base \
    curl \
    wget \
    file \
    g++ \
    gcc \
    git \
    less \
    libstdc++ \
    libffi-dev \
    libc-dev \
    linux-headers \
    libxml2-dev \
    libxslt-dev \
    libgcrypt-dev \
    make \
    netcat-openbsd \
    nodejs \
    openssl \
    pkgconfig \
    postgresql-dev \
    python3 \
    tzdata \
    yarn \
    bash \
    imagemagick

RUN wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && tar -C /usr/local/bin -xzvf dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && rm dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz

RUN gem install bundler -v ${BUNDLER_VERSION}

WORKDIR /app

COPY Gemfile Gemfile.lock /app/

RUN bundle config build.nokogiri --use-system-libraries
RUN bundle check || bundle install

#COPY package.json yarn.lock ./
#RUN yarn install --check-files

COPY . /app/

EXPOSE 3000
