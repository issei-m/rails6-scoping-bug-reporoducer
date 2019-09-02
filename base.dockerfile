ARG RAILS_VERSION=6.0

FROM ruby:2.6.4-stretch

WORKDIR /app

COPY Gemfile Gemfile.lock ./
RUN bundle install
