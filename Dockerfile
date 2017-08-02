FROM elasticsearch:5.4.1

RUN set -x \
    && ./bin/elasticsearch-plugin install https://github.com/couchbaselabs/elasticsearch-transport-couchbase/releases/download/2.5.4.1/elasticsearch-transport-couchbase-2.5.4.1.zip

EXPOSE 9200 9300 9091
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["elasticsearch"]
