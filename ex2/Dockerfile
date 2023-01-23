FROM ruby
WORKDIR /usr/src/ruby
ENV FILE=data.json
ARG lib=gem install json
RUN  ${library}
COPY . .
CMD ruby  exercise.rb  cricketdata.json ; cat cricketdata.json