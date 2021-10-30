
set -u -x

  curl 'http://localhost:8851/maps/api/geocode/json' -G --data-urlencode 'latlng=-23.493394,-46.854586'
  sleep 1
  redis-cli keys cache-geo-cache:*
  redis-cli hkeys cache-geo-cache:url:h
  redis-cli hgetall cache-geo-cache:url:h
