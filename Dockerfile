# FROM ruby:2.3.1
# RUN apt-get update -qq && apt-get install -y build-essential libpq-dev postgresql-client
# ENV RAILS_ROOT /var/www/outtAttendance
# RUN mkdir -p $RAILS_ROOT/tmp/pids
# WORKDIR $RAILS_ROOT
# COPY Gemfile Gemfile
# COPY Gemfile.lock Gemfile.lock
# RUN gem install bundler
# RUN bundle install
# COPY config/puma.rb config/puma.rb
# COPY . .
# EXPOSE 3000
# CMD bundle exec puma -C config/puma.rb
