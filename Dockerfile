FROM ruby:2.6.5

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
    && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
    && apt-get update -qq \
    && apt-get install -y nodejs yarn 
WORKDIR /atopic_share
COPY . /atopic_share
RUN gem install bundler 
RUN bundle config --local set path 'vendor/bundle' \ && bundle install
