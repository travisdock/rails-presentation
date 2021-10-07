FROM ruby:2.7.3

RUN apt-get update

ENV APP_HOME="/catdb"
ADD . $APP_HOME
WORKDIR $APP_HOME
RUN gem install rails bundler
RUN bundle install

EXPOSE 3000
CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]
