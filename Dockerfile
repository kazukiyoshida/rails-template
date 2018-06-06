FROM ruby:2.3.1

MAINTAINER Yoshida Kazuki

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /myapp
WORKDIR /myapp
ADD ./myapp/Gemfile /myapp/Gemfile
ADD ./myapp/Gemfile.lock /myapp/Gemfile.lock
RUN bundle install
ADD ./myapp /myapp
