FROM ruby:2.2.3

# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1

RUN apt-get update && apt-get install -y sqlite3 --no-install-recommends && rm -rf /var/lib/apt/lists/*

ENV REPO_DIR /home/sims/repo
RUN mkdir -p $REPO_DIR


WORKDIR $REPO_DIR

COPY Gemfile $REPO_DIR/
COPY Gemfile.lock $REPO_DIR/
RUN bundle install

COPY . $REPO_DIR/

RUN RAILS_ENV=development rake db:setup

EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]
