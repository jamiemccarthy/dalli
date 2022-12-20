FROM ruby:${MATRIX_RUBY_VERSION:-2.7}

ENV WORKDIR=/dalli
WORKDIR ${WORKDIR}
RUN gem install -v 2.3.26 bundler
ADD . ${WORKDIR}
RUN bundle install
