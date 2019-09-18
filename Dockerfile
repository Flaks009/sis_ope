FROM ruby:2.5.6
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /sis_ope
WORKDIR /sis_ope
ADD Gemfile /sis_ope/Gemfile
ADD Gemfile.lock /sis_ope/Gemfile.lock
RUN bundle install
ADD . /sis_ope
