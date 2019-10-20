FROM ruby:2.5.5

COPY . /application

WORKDIR /application

RUN bundle install

RUN rm yarn.lock

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
