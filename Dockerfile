FROM ruby:2.6.3
RUN apt-get update && apt-get install -y \
      build-essential \
      libpq-dev \
      nodejs \
      postgresql-client \
      yarn
WORKDIR /taskleaf
COPY Gemfile Gemfile.lock /taskleaf/
RUN bundle install
