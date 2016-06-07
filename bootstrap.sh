#! /bin/bash

until psql -h db -U "postgres" -c '\l'; do
  >&2 echo "Postgres is unavailable - sleeping"
  sleep 1
done

>&2 echo "Postgres is up - taking off. Weeee!"

bundle exec rake db:setup
bundle exec rails s -p 3000 -b '0.0.0.0'
