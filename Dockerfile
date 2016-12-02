FROM convox/ruby

RUN apt-get update && apt-get -yy install libmysqld-dev libpq-dev libsqlite3-dev
RUN apt-get -yy install file
RUN apt-get -yy install nginx nodejs
RUN apt-get -yy install imagemagick 

ENV PORT 5000

COPY bin/web /app/bin/web
COPY conf/convox.rb /app/config/initializers/convox.rb
COPY conf/nginx.conf /etc/nginx/nginx.conf

#CMD ["bin/web"]
