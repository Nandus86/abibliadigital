FROM mongo:3.6.3

EXPOSE 27017

COPY docker-mongo/run.sh /run.sh
COPY docker-mongo/files/mongod.conf /etc/mongod.conf

COPY docker-mongo/files/ /files/ 

RUN chmod +x /run.sh

CMD ["/run.sh"]
