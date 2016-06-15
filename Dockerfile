FROM vovimayhem/ruby:1.9.3-p551

COPY . /app
WORKDIR /app
RUN bundle install
EXPOSE 9292
USER nobody
CMD rackup -o 0.0.0.0 config.ru
