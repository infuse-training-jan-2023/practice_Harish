FROM ruby
WORKDIR /usr/src/ruby
ENV FILE=data.json
RUN  gem install json
COPY . .
CMD ruby  exercise.rb  data.json 