FROM postgres:9.6
MAINTAINER Daniel Dent (https://www.danieldent.com)
ENV PG_MAX_WAL_SENDERS 1
ENV PG_WAL_KEEP_SEGMENTS 1
COPY setup-replication.sh /docker-entrypoint-initdb.d/
COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint-initdb.d/setup-replication.sh /docker-entrypoint.sh
