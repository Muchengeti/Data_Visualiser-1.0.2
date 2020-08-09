FROM ruby:2.5.1
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /athena
WORKDIR /athena

COPY . /athena
RUN bundle install

CMD sh -c "rm -f /athena/tmp/pids/server.pid; bundle exec rails db:migrate; bundle exec rails s -p $PORT -b '0.0.0.0'"
