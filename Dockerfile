FROM convox/ruby

RUN apt-get update && apt-get -yy install libmysqld-dev libpq-dev libsqlite3-dev apt-utils
RUN apt-get -yy install file
RUN apt-get -yy install nodejs
RUN apt-get -yy install imagemagick 
RUN apt-get update && apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 561F9B9CAC40B2F7
RUN apt-get update && apt-get -yy install apt-transport-https ca-certificates
RUN sh -c 'echo deb https://oss-binaries.phusionpassenger.com/apt/passenger xenial main > /etc/apt/sources.list.d/passenger.list' && apt-get update
RUN apt-get install -y nginx-extras passenger
RUN apt-get install -yy wget curl

ENV PORT 3000

COPY bin/web /app/bin/web
COPY conf/convox.rb /app/config/initializers/convox.rb
COPY conf/nginx.conf /etc/nginx/nginx.conf

CMD ["bin/web"]
